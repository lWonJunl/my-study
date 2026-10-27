from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split

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

## 데이터 나누기
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.33, random_state=42, stratify=y
)

print(y_train)
print(y_test)

## 데이터 학습
model = KNeighborsClassifier(n_neighbors=3)
model.fit(X_train, y_train)

## 예측 테스트
print(model.predict(X_test))

## 모델 정학도 테스트
accuracy = model.score(X_test, y_test)
print("Accuracy:", accuracy)