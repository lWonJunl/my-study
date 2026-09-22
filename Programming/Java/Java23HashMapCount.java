import java.util.HashMap;

public class Java23HashMapCount {
    public static void main(String[] args) {
        HashMap<String, Integer> count = new HashMap<>();

        String[] languages = {
            "Java", "Python", "Java", "SQL", "Java", "Python"
        };
        
        for (int i=0; i<languages.length; i++) {
            count.put(languages[i], count.getOrDefault(languages[i], 0) + 1);
        }


        String maxLanguage = "";
        int maxCount = 0;

        for (String key : count.keySet()) {
            if (maxCount < count.get(key)){
                maxLanguage = key;
                maxCount = count.get(key);
            }
            System.out.println(key + ": " + count.get(key));
        }
        System.out.println("가장 많이 등장한 언어: " + maxLanguage);
        System.out.println("등장 횟수: " + maxCount); 
    }
}