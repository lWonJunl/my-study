import matplotlib.pyplot as plt

# plot
x = [1, 2, 3, 4]
y = [70, 85, 80, 95]

plt.title("Score Trend")
plt.xlabel("Test")
plt.ylabel("Score")
plt.plot(x, y)

plt.show()

# bar
subjects = ["Java", "SQL", "Node", "AI"]
scores = [80, 90, 75, 85]

plt.title("Subject Scores")
plt.xlabel("Subject")
plt.ylabel("Score")
plt.bar(subjects, scores)

plt.show()