import kagglehub
import os
import pandas as pd

# Télécharger le dataset
try:
    path = kagglehub.dataset_download("tamber/steam-video-games")
    print("Path to dataset files:", path)
except Exception as e:
    print("Erreur lors du téléchargement :", e)
    # Optionnel : supprimer le cache si besoin
    # import shutil; shutil.rmtree(os.path.expanduser('~/.cache/kagglehub'))
    raise

# Vérifier que le fichier existe et n'est pas vide
file_path = os.path.join(path, "steam-200k.csv")
if not os.path.exists(file_path) or os.path.getsize(file_path) < 1000:
    raise Exception("Fichier manquant ou corrompu : " + file_path)

# Charger le fichier avec pandas
df = pd.read_csv(file_path, encoding='latin-1', delimiter=',', header=0)
print("First 5 records:", df.head())