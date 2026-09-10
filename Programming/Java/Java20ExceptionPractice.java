public class Java20ExceptionPractice {
    public static void main(String[] args) {
        try {
            String text = "abc";
            int number = Integer.parseInt(text);
            System.out.println(number);
        } catch(NumberFormatException e) {
            System.out.println("숫자로 변환할 수 없습니다.");
        } finally {
            System.out.println("변환 작업 종료");
        }
    }
}