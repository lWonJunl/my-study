import pandas as pd

df = pd.DataFrame({
    "department": ["CS", "CS", "Design", "Design", "CS"],
    "score": [80, 90, 70, 85, 100]
})

# groupby(0)
print(df.groupby('department')['score'].mean())
print(df.groupby('department')['score'].sum())
print(df.groupby('department')['score'].max())

# agg()
print(df.groupby("department")["score"].agg(["mean", "max", "min"]))

# reset_index()
result = df.groupby("department")["score"].agg(["mean", "max", "min"]).reset_index()
print(result)