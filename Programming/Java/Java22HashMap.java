import java.util.HashMap;

public class Java22HashMap {
    public static void main(String[] args) {
        HashMap<String, Integer> scores = new HashMap<>();

        scores.put("Java", 90);
        scores.put("SQL", 85);
        scores.put("Node", 80);

        System.out.println(scores.get("Java"));

        scores.put("SQL", 95);

        scores.remove("Node");

        for (String key : scores.keySet()) {
            System.out.println(key + ": " + scores.get(key));
        }

        System.out.println(scores.containsKey("Python"));
    }
}