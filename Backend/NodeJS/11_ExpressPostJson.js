const express = require("express");
const cors = require("cors");
const app = express();
app.use(express.json());
app.use(cors());

app.post('/users', (req, res) => {
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

    res.status(200).json({
        name : name,
        age : age,
        message : "등록 완료"
    })
});

app.listen(3000, () => {
    console.log("서버가 열렸습니다");
});