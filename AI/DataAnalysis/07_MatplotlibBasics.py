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

# scatter
study_hours = [1, 2, 3, 4, 5]
scores = [55, 65, 70, 82, 90]

plt.title("Study Time and Score")
plt.xlabel("Hours")
plt.ylabel("Score")
plt.scatter(study_hours, scores)

plt.show()