import java.util.ArrayDeque;
import java.util.Deque;

public class Java28DequePractice {
    public static void main(String[] args) {
        Deque<String> history = new ArrayDeque<>();

        history.push("파일 생성");
        history.push("내용 작성");
        history.push("파일 저장");

        String cancelled = history.pop();
        String recent = history.peek();

        System.out.println("취소한 작업: " + cancelled);
        System.out.println("현재 최근 작업: " + recent);
        System.out.println("남은 작업: " + history);
    }
}
