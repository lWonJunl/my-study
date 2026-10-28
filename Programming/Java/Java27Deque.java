import java.util.ArrayDeque;
import java.util.Deque;

public class Java27Deque {
    public static void main(String[] args) {
        Deque<Integer> deque = new ArrayDeque<>();

        deque.addLast(10);
        deque.addLast(20);
        deque.addLast(30);
        deque.addFirst(5);

        deque.removeFirst();
        deque.removeLast();

        System.out.println(deque);

        Deque<String> stack = new ArrayDeque<>();

        stack.push("Java");
        stack.push("SQL");
        stack.push("AI");

        System.out.println(stack.peek());
        System.out.println(stack.pop());
        System.out.println(stack);

    }
}