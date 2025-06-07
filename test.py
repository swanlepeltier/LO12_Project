# Install dependencies as needed:
# pip install kagglehub[pandas-datasets]
import kagglehub
from kagglehub import KaggleDatasetAdapter

# Set the path to the file you'd like to load
file_path = "steam-200k.csv"

# Load the latest version
df = kagglehub.load_dataset(
  KaggleDatasetAdapter.PANDAS,
  "tamber/steam-video-games",
  file_path,
  # Provide any additional arguments like 
  # sql_query or pandas_kwargs. See the 
  # documenation for more information:
  # https://github.com/Kaggle/kagglehub/blob/main/README.md#kaggledatasetadapterpandas
)

print("First 5 records:", df.head())
#  1. Importer les bibliothèques nécessaires
import pandas as pd
from mlxtend.preprocessing import TransactionEncoder
from mlxtend.frequent_patterns import apriori, association_rules

# 2. Définir les transactions
transactions = [
    ['pain', 'beurre', 'confiture'],
    ['pain', 'beurre'],
    ['pain', 'lait'],
    ['beurre', 'confiture'],
    ['pain', 'confiture']
]

# 3. Encoder les données en format binaire (one-hot encoding)
te = TransactionEncoder()
te_ary = te.fit(transactions).transform(transactions)
df = pd.DataFrame(te_ary, columns=te.columns_)

# 4. Appliquer l'algorithme Apriori pour extraire les itemsets fréquents
frequent_itemsets = apriori(df, min_support=0.4, use_colnames=True)

# 5. Générer les règles d’association à partir des itemsets fréquents
rules = association_rules(frequent_itemsets, metric="confidence", min_threshold=0.6)

# 6. Afficher les résultats
print("Itemsets fréquents :\n", frequent_itemsets)
print("\nRègles d'association :\n", rules[['antecedents', 'consequents', 'support', 'confidence', 'lift']])

# On choisit le nom du fichier de sortie
output_file = "regles_auto.clp"

# On ouvre le fichier en écriture
with open(output_file, "w", encoding="utf-8") as f:
    # On boucle sur chaque règle générée par Apriori
    for i, row in rules.iterrows():
        # On extrait l’antécédent (la condition gauche) — on prend le premier élément
        antecedents = list(row['antecedents'])
        if len(antecedents) != 1:
            continue  # On ignore les règles trop complexes pour CLIPS simple

        antecedent = antecedents[0]

        # Idem pour le conséquent
        consequents = list(row['consequents'])
        if len(consequents) != 1:
            continue  # On ignore les règles multiples (pour simplifier)

        consequent = consequents[0]

        # Écriture de la règle CLIPS
        f.write(f"""(defrule regle-{i+1}
  (achat {antecedent})
  =>
  (assert (achat {consequent}))
  (printout t "Règle activée : {antecedent} => {consequent}" crlf))\n\n""")

# Liste de produits à inclure dans les faits de test
produits_de_test = ['beurre']  # à adapter selon ce que tu veux tester

with open(output_file, "a", encoding="utf-8") as f:
    f.write("(deffacts cas-test\n")
    for produit in produits_de_test:
        f.write(f"  (achat {produit})\n")