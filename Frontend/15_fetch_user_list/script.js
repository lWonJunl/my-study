const userList = document.querySelector("#userList");
const name = document.querySelector("#name");
const age = document.querySelector("#age");
const addBtn = document.querySelector("#addBtn");
const result = document.querySelector("#result");

function loadUsers() {
    userList.innerHTML = "";

    fetch("http://localhost:3000/users")
        .then(response => response.json())
        .then(users => {
            users.forEach(user => {
                const li = document.createElement("li");
                li.textContent = `${user.name}, ${user.age}`;
                userList.appendChild(li);
            });
        });
}

addBtn.addEventListener("click", () => {
    const nameInput = name.value;
    const ageInput = age.value;

    const data = {
        name : nameInput,
        age : ageInput
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
            loadUsers();
        });
});

loadUsers();