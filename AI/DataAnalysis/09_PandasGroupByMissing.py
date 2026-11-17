import pandas as pd

df = pd.DataFrame({
    "department": ["CS", "CS", "CS", "AI", "AI"],
    "score": [90, None, 70, 80, None]
})

group = df.groupby("department")["score"]

print(group.mean().loc["CS"])
print(group.count().loc["CS"])
print(group.size().loc["CS"])


print(group.agg(['mean', 'count', 'size']))