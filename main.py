import os
import pandas as pd
from mlxtend.preprocessing import TransactionEncoder
from mlxtend.frequent_patterns import apriori, association_rules
import kagglehub
import clips

# 1. Télécharger et charger le dataset Steam via KaggleHub
def load_steam_data(dataset_name: str = "tamber/steam-video-games",
                    file_name: str = "steam-200k.csv") -> pd.DataFrame:
    try:
        path = kagglehub.dataset_download(dataset_name)
        print(f"Dataset téléchargé dans : {path}")
    except Exception as e:
        print(f"Erreur lors du téléchargement : {e}")
        raise

    file_path = os.path.join(path, file_name)
    if not os.path.exists(file_path) or os.path.getsize(file_path) < 1000:
        raise FileNotFoundError(f"Fichier introuvable ou corrompu : {file_path}")

    # Lecture sans en-tête, en spécifiant les noms de colonnes
    col_names = ['user_id', 'game_name', 'purchase', 'playtime', 'unused']
    df = pd.read_csv(file_path, encoding='latin-1', delimiter=',', header=None, names=col_names)
    print("Aperçu des données Steam (5 premières lignes) :")
    print(df.head())
    return df

# 2. Prétraitement des données

def preprocess_data(df: pd.DataFrame) -> pd.DataFrame:
    # On ne garde que les lignes avec 'play' dans la colonne 'purchase'

    # On supprime la colonne 'unused'
    df = df.drop(columns=['unused'])

    # On ne garde que les colonnes d'intérêt: user_id, game_name
    df = df[['user_id', 'game_name']]

    # Suppression des doublons (un même jeu par utilisateur)
    df = df.drop_duplicates()
    return df

# 3. Mise en forme en transactions pour Apriori

def build_transactions(df: pd.DataFrame) -> list:
    # Groupe par utilisateur et compile la liste de jeux
    grouped = df.groupby('user_id')['game_name'].apply(list)
    return grouped.tolist()

# 4. Application de l'algorithme Apriori et génération de règles

def mine_association_rules(transactions: list,
                           min_support: float = 0.02,
                           min_confidence: float = 0.5) -> pd.DataFrame:
    te = TransactionEncoder()
    te_ary = te.fit(transactions).transform(transactions)
    trans_df = pd.DataFrame(te_ary, columns=te.columns_)

    # Extraction des itemsets fréquents
    frequent_itemsets = apriori(trans_df, min_support=min_support, use_colnames=True)

    # Génération des règles d'association
    rules = association_rules(frequent_itemsets,
                               metric="confidence",
                               min_threshold=min_confidence)
    return rules

import re

def sanitize(name):
    """
    Convertit un nom de jeu en un symbole CLIPS compatible :
    - remplace les espaces, parenthèses, &, etc.
    - supprime les caractères non alphanumériques restants
    - évite les conflits avec des mots réservés
    """
    # Remplacer les & et autres symboles
    name = re.sub(r"[&()/\-]", " ", name)
    # Remplacer tous les espaces et caractères spéciaux par _
    name = re.sub(r"[^a-zA-Z0-9]", "_", name)
    # Supprimer les multiples _
    name = re.sub(r"_+", "_", name).strip("_")
    return name

# 5. Écriture des règles en format CLIPS

def generate_clips_rules(rules: pd.DataFrame,
                          output_file: str = "regles_steam.clp",
                          max_antecedents: int = 1,
                          max_consequents: int = 1,
                          test_items: list = None) -> None:
    if test_items is None:
        test_items = []

    with open(output_file, "w", encoding="utf-8") as f:
        for i, row in rules.iterrows():
            antecedents = list(row['antecedents'])
            consequents = list(row['consequents'])

            # On ne garde que les règles simples
            if len(antecedents) != max_antecedents or len(consequents) != max_consequents:
                continue

            ant = sanitize(antecedents[0])
            cons = sanitize(consequents[0])
            f.write(f"(defrule regle-{i+1}\n")
            f.write(f"  (achat {ant})\n")
            f.write("  =>\n")
            f.write(f"  (assert (achat {cons}))\n")
            f.write(f"  (printout t \"Regle activee : {ant} => {cons}\" crlf))\n\n")

        # Ajout des faits de test
        if test_items:
            f.write("(deffacts cas-test\n")
            for item in test_items:
                f.write(f"  (achat {item})\n")
            f.write(")\n")

    print(f"Fichier CLIPS généré : {output_file}")

def clipsTest():
    environment.reset()

    jeuxTest = sanitize(input("\nEntrez le jeu à tester : "))

    environment.assert_string(f"(achat {jeuxTest})")

    print("\n")

    for fact in environment.facts():
        print("Fait initial :", fact)

    print("\n")
    environment.run()
    print("\n")

    # Afficher les faits après exécution
    for fact in environment.facts():
        print("Fait après exécution :", fact)

# === Main ===
if __name__ == "__main__":
    # Chargement et prétraitement
    steam_df = load_steam_data()

    print(f"Nombre de lignes initiales : {len(steam_df)}")

    clean_df = preprocess_data(steam_df)

    print(f"Nombre de lignes après posttraitement : {len(clean_df)}")

    transactions = build_transactions(clean_df)

    print(f"Nombre de transactions : {len(transactions)}")

    # Extraction des règles
    rules = mine_association_rules(transactions,
                                   min_support=0.02,
                                   min_confidence=0.6)
    print(f"Nombre de règles générées : {len(rules)}")

    # Génération du fichier CLIPS
    # Exemple de test : remplacer par des jeux réels

    generate_clips_rules(rules)

    environment = clips.Environment()

    environment.load("regles_steam.clp")

    while True:
        try:
            clipsTest()
        except Exception as e:
            print(f"Erreur lors de l'exécution de CLIPS : {e}")
            break