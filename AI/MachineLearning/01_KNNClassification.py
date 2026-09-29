from sklearn.neighbors import KNeighborsClassifier

## 데이터 입력
X = [
    [1, 1],
    [1, 2],
    [2, 1],
    [8, 8],
    [8, 9],
    [9, 8]
]
y = ["A", "A", "A", "B", "B", "B"]

## 데이터 학습
model = KNeighborsClassifier(n_neighbors=3)
model.fit(X, y)

## 데이터 예측 1
prediction = model.predict([[2, 2]])
print(prediction)

## 데이터 예측 2
predictions = model.predict([
    [2, 2],
    [9, 9]
])
print(predictions)

## 정확도 평가
X_test = [
    [1, 3],
    [9, 9],
    [2, 2],
    [8, 7]
]

y_test = ["A", "B", "A", "B"]
    
accuracy = model.score(X_test, y_test)
print("Accuracy:", accuracy)