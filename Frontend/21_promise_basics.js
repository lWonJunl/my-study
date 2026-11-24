const a = 100;
const b = Promise.resolve(100);

console.log(a);
console.log(b);

console.log(typeof a);
console.log(typeof b);

console.log(b instanceof Promise);

console.log(a + 10);
console.log(b + 10);

function getNumber() {
    return 100;
}

async function getAsyncNumber() {
    return 100;
}

const c = getNumber();
const d = getAsyncNumber();

console.log(c);
console.log(d);

console.log(typeof c);
console.log(typeof d);

async function main() {
    const e = await d;

    console.log(d);
    console.log(e);

    console.log(typeof d);
    console.log(typeof e);

    console.log(d + 10);
    console.log(e + 10);
}

main();