import psycopg2
from dotenv import load_dotenv
import os


load_dotenv()

def conectar():
    """Establece conexión con la base de datos PostgreSQL"""
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )
    return conn

def obtener_regiones():
    """Obtiene todas las comunidades autónomas"""
    conn = conectar()
    cursor = conn.cursor()
    cursor.execute("SELECT id, codigo, nombre FROM regiones ORDER BY nombre")
    regiones = cursor.fetchall()
    cursor.close()
    conn.close()
    return regiones

if __name__ == "__main__":
    print("Conectando a la base de datos...")
    regiones = obtener_regiones()
    print(f"Regiones encontradas: {len(regiones)}")
    for region in regiones:
        print(f"  {region[0]} | {region[1]} | {region[2]}")