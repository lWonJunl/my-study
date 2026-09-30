import java.util.LinkedList;
import java.util.Queue;

public class Java26Queue {
    public static void main(String[] args) {
        Queue<String> queue = new LinkedList<>();

        queue.offer("java");
        queue.offer("sql");
        queue.offer("python");

        System.out.println(queue.peek());
        System.out.println(queue.poll());
        System.out.println(queue);

        queue.offer("html");
        queue.offer("css");
        queue.offer("javascript");

        while (!queue.isEmpty()) {
            System.out.println(queue.poll());
        }
    }
}
