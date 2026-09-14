import java.util.ArrayList;

public class Java21ArrayList {
    public static void main(String[] args) {
        ArrayList<String> names = new ArrayList<>();    // ArrayList 추가

        // 요소 추가
        names.add("java");
        names.add("sql");
        names.add("node");

        System.out.println(names.get(1));   // 값 조회 (index)

        names.remove("sql"); // 요소 제거

        System.out.println(names.size()); // 배열 크기 확인

        // for문으로 배열 출력
        for (int i=0; i < names.size(); i++) {
            System.out.println(names.get(i));
        }     

        System.out.println(names.contains("java")); // 요소의 존재여부 출력

        names.set(0, "python"); // 해당 index의 값 변경

        // 향상된 form문으로 배열 출력
        for (String name : names) {
            System.out.println(name);
        } 

    }
}