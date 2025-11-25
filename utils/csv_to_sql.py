import os
import pandas as pd
from dotenv import load_dotenv
from sqlalchemy import create_engine

load_dotenv()

DB_USER = os.getenv("SRC_POSTGRES_USER")
DB_PASSWORD = os.getenv("SRC_POSTGRES_PASSWORD")
DB_HOST = os.getenv("SRC_POSTGRES_HOST")
DB_PORT = os.getenv("SRC_POSTGRES_PORT")
DB_NAME = os.getenv("SRC_POSTGRES_DB")


CSV_FILE = "../cities_2024.csv"
TABLE_NAME = "commodity_source"


DATABASE_URL = f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
def add_to_db():

    try:
        print(f"Membaca file {CSV_FILE}")
        df = pd.read_csv(CSV_FILE)
        # print("DataFrame Head")
        # print(df.head())
        integer_cols =[
            'value', 'commodity_id', 'avg_value', 'max_value', 'min_value', 'city_id', 'Year', 'Month'
        ]
        for col in integer_cols:
            df[col] = df[col].fillna(0).astype(int)

        engine = create_engine(DATABASE_URL)
        print("Database connection successful")
        print("="*20)
        print(f"Memuat data ke tabel: {TABLE_NAME}...")
        df.to_sql(
            name=TABLE_NAME,
            con=engine,
            if_exists="replace",
            index=False,
        )
        print("Data Berhasil disimpan ke postgres...")
    except Exception as e:
        print(f"Database connection failed {e}")

if __name__ == "__main__":
    add_to_db()