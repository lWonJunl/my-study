const tasks = document.querySelector("#tasks");

const li1 = document.createElement("li");
const li2 = document.createElement("li");

li1.textContent = "Java 공부";
li2.textContent = "AI 공부";

tasks.appendChild(li1);
tasks.appendChild(li2);