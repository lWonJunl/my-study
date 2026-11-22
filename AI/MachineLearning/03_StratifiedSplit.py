from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from collections import Counter
from sklearn.metrics import classification_report

X = [
    [1, 1], [1, 2], [2, 1], [2, 2],
    [3, 1], [3, 2], [1, 3], [2, 3],
    [3, 3], [4, 1], [4, 2], [4, 3],
    [8, 8], [8, 9], [9, 8], [9, 9],
    [10, 8], [10, 9], [8, 10], [9, 10]
]

y = ["A"] * 12 + ["B"] * 8

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=42, stratify=y
)

print(Counter(y_train))
print(Counter(y_test))

model = KNeighborsClassifier(n_neighbors=3)
model.fit(X_train, y_train)

y_pred = model.predict(X_test)
print(y_pred)

accuracy = model.score(X_test, y_test)
print("Accuracy:", accuracy)

print(classification_report(y_test, y_pred))