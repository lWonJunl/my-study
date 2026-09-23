import java.util.HashSet;

public class Java24HashSet {
    public static void main(String[] args) {
        HashSet<String> set = new HashSet<>();

        String[] languages = {
            "Java", "Python", "Java", "SQL", "Python", "Java"
        };

        for (int i = 0; i < languages.length; i++) {
            if (!set.add(languages[i])) {
                System.out.println("중복 발견: " + languages[i]);
            }
        }   

        System.out.println(set);
        System.out.println("언어 종류: " + set.size());
        System.out.println("Java 포함 여부: " + set.contains("Java"));
    }
}