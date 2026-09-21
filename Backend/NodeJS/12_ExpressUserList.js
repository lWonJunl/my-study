const express = require("express");
const cors = require("cors");
const app = express();
app.use(express.json());
app.use(cors());

const users = [
    { name: "kim", age: 20 },
    { name: "lee", age: 21 }
];

app.get("/users", (req, res) => {
    res.status(200).json(users);
});

app.post("/users", (req, res) => {
    const name = req.body.name;
    const age = req.body.age;

    if (!name) {
        return res.status(400).json({
            message : "이름이 필요합니다"
        });
    } else if (!age) {
        return res.status(400).json({
            message : "나이가 필요합니다."
        });
    } else if (age < 0) {
        return res.status(400).json({
            message : "올바른 나이를 입력해주세요."
        });
    }

    users.push({
        name: name,
        age: age,
    });

    res.status(201).json({
        message: "사용자 추가 완료"
    });
});

app.listen(3000, () => {
    console.log("서버가 열렸습니다");
});