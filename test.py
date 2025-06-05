import kagglehub

# Download latest version
path = kagglehub.dataset_download("jayaantanaath/student-habits-vs-academic-performance")

print("Path to dataset files:", path)
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