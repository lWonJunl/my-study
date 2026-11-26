public class Java29ExceptionReturn {
    public static void main(String[] args) {
        System.out.println(divide(10, 2));
        System.out.println(divide(10, 0));
    }

    static int divide(int a, int b) {
        try {
            return a/b;
        } catch (ArithmeticException e) {
            return -1;
        } finally {
            System.out.println("계산 종료");
        }
    }
}