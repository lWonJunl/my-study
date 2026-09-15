const name = document.querySelector("#name");
const age = document.querySelector("#age");
const submitBtn = document.querySelector("#submitBtn");
const result = document.querySelector("#result");

submitBtn.addEventListener("click", () => {
    const nameInput = name.value;
    const ageInput = age.value;

    const data = {
        name: nameInput,
        age: ageInput
    };

    fetch("http://localhost:3000/users", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(data => {
            result.textContent = data.message;
        });
});