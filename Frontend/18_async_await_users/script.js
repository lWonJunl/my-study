const userList = document.querySelector("#userList");
const name = document.querySelector("#name");
const age = document.querySelector("#age");
const editId = document.querySelector("#editId");
const editName = document.querySelector("#editName");
const editAge = document.querySelector("#editAge");
const editBtn = document.querySelector("#editBtn");
const addBtn = document.querySelector("#addBtn");
const status = document.querySelector("#status");
const reloadBtn = document.querySelector("#reloadBtn");

async function loadUsers() {
    status.textContent = "불러오는 중...";
    reloadBtn.disabled = true;

    try {
        const response = await fetch("http://localhost:3000/users");

        if (!response.ok) {
            throw new Error("사용자 목록을 불러오지 못했습니다.");
        }

        const users = await response.json();

        userList.innerHTML = "";

        users.forEach(user => {
            const li = document.createElement("li");
            const deleteBtn = document.createElement("button");

            li.textContent = `${user.id}, ${user.name}, ${user.age}`;
            deleteBtn.textContent = "삭제";

            deleteBtn.addEventListener("click", async () => {
                try {
                    const response = await fetch(
                        `http://localhost:3000/users/${user.id}`,
                        {
                            method: "DELETE"
                        }
                    );

                    const data = await response.json();

                    if (!response.ok) {
                        throw new Error(data.message);
                    }

                    const loaded = await loadUsers();
                    if (loaded) {
                        status.textContent = data.message;
                    }

                } catch (error) {
                    status.textContent = error.message;
                }
            });

            li.appendChild(deleteBtn);
            userList.appendChild(li);
        });

        status.textContent = "목록 조회 완료";
        return true;

    } catch (error) {
        status.textContent = error.message;
        return false;
    } finally {
        reloadBtn.disabled = false;
    }
}

addBtn.addEventListener("click", async () => {
    const nameInput = name.value;
    const ageInput = age.value;

    const data = {
        name: nameInput,
        age: ageInput
    };

    try {
        const response = await fetch("http://localhost:3000/users", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        });

        const responseData = await response.json();

        if (!response.ok) {
            throw new Error(responseData.message);
        }

        name.value = "";
        age.value = "";

        const loaded = await loadUsers();

        if (loaded) {
            status.textContent = responseData.message;
        }
    } catch (error) {
        status.textContent = error.message;
    }
});

editBtn.addEventListener("click", async () => {
    const idInput = editId.value;
    const nameInput = editName.value;
    const ageInput = editAge.value;

    const data = {
        name: nameInput,
        age: ageInput
    };
    try {
        const response = await fetch(`http://localhost:3000/users/${idInput}`, {
            method: "PUT",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        });

        const responseData = await response.json();

        if (!response.ok) {
            throw new Error(responseData.message);
        }

        editId.value = "";
        editName.value = "";
        editAge.value = "";
        const loaded = await loadUsers();
        if (loaded) {
            status.textContent = responseData.message;
        }
    } catch (error) {
        status.textContent = error.message;
    }
});

reloadBtn.addEventListener("click", () => {
    loadUsers();
});

loadUsers();