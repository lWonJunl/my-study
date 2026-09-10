import pandas as pd

students = pd.DataFrame({
    "id": [1, 2, 3],
    "name": ["kim", "lee", "park"]
})

scores = pd.DataFrame({
    "id": [1, 2],
    "score": [90, 80]
})

# merge
result = pd.merge(students, scores, on="id", how='left')
print(result)

# 결측치 처리 및 조건출력 
result['score'] = result['score'].fillna(0)
print(result[result['score'] >= 80])