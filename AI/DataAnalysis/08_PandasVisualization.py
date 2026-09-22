import pandas as pd
import matplotlib.pyplot as plt

df = pd.DataFrame({
    "name": ["kim", "lee", "park", "choi"],
    "score": [90, 75, 85, 95]
})

# dataframe으로 막대그래프 출력
plt.title("Student Scores")
plt.xlabel("Name")
plt.ylabel("Score")
plt.bar(df["name"], df["score"])
plt.show()

# dataframe으로 조건부 막대그래프 출력
plt.title("High Score Students")
plt.xlabel("Name")
plt.ylabel("Score")
high_score = df[df["score"] >= 80]
plt.bar(high_score["name"], high_score["score"])
plt.show()



df2 = pd.DataFrame({
    "department": ["CS", "CS", "Business", "Business"],
    "score": [90, 80, 70, 90]
})

# dataframe과 groupby()
mean_score = df2.groupby("department")["score"].mean()
print(mean_score)

plt.title("Average Score Department")
plt.xlabel("Department")
plt.ylabel("Average Score")
plt.bar(mean_score.index, mean_score.values)
plt.show()