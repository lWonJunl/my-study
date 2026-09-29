import java.util.HashSet;

public class Java25CollectionPractice {
    public static void main(String[] args) {
        HashSet<String> set = new HashSet<>();

        String[] names = {
            "kim", "lee", "kim", "park", "lee", "choi"
        };

        for (int i = 0; i < names.length; i++) {
            set.add(names[i]);
        }

        System.out.println("중복 제거된 이름: " + set);
        System.out.println("사람 수: " + set.size());
    }
}