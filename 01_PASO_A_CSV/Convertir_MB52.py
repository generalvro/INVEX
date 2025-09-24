import pandas as pd
import datetime
from google.colab import files

# === 1. Subir archivo original (SAP exportado) ===
uploaded = files.upload()
nombre_archivo = list(uploaded.keys())[0]

# === 2. Leer TODO como texto ===
df = pd.read_excel(nombre_archivo, dtype=str)

# === 3. Reemplazar coma por punto SOLO en columnas I a AE ===
cols = df.columns[8:31]  # I (9na col) → AE (31va col)
df[cols] = df[cols].applymap(
    lambda x: x.replace(",", ".") if isinstance(x, str) and "," in x else x
)

# === 4. Guardar como CSV con nombre MB52_fecha ===
fecha = datetime.datetime.now().strftime("%d_%m_%Y")
nombre_csv = f"MB52_{fecha}.csv"
df.to_csv(nombre_csv, index=False, sep=";", encoding="utf-8")

# === 5. Descargar archivo procesado ===
files.download(nombre_csv)

print(f"✅ Archivo procesado y listo: {nombre_csv}")
