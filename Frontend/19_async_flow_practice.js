async function checkRequest(mode) {
    console.log(`[${mode}] 시작`);

    try {
        let response;

        if (mode === "ok") {
            response = await Promise.resolve({
                ok: true,
                status: 200
            });
        } else if (mode === "http") {
            response = await Promise.resolve({
                ok: false,
                status: 404
            });
        } else {
            response = await Promise.reject(
                new Error("연결 실패")
            );
        }

        if (!response.ok) {
            throw new Error("문제 발생")
        }

        console.log(`[${mode}] 성공`);

    } catch (error) {
        console.log(`[${mode}] 실패: ${error.message}`);
    } finally {
        console.log(`[${mode}] 종료`);
    }
}

async function main() {
    await checkRequest("ok");
    await checkRequest("http");
    await checkRequest("network");
}

main();
