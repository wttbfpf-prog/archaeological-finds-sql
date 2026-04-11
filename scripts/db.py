import pandas as pd
from sqlalchemy import create_engine
engine = create_engine("mysql+pymysql://analyst:StrongPass123!@127.0.0.1:3306/Archaeological_Finds")
def q(sql: str) -> pd.DataFrame:
    return pd.read_sql(sql, engine)