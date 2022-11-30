public class PrintNumber {
    public int print(int a) {
        System.out.println("Integer :"+a);
        return a;
    }

    public float print(float b) {
        System.out.println("FLOAT Num :"+b);
        return b;
    }

    public double print(double c) {
        System.out.println("Double Num :"+c);
        return c;

    }

    public String print(String d) {
        System.out.println("String :"+d);
        return d;
    }



    public static void main(String[] args) {

        PrintNumber a = new PrintNumber();
        PrintNumber b = new PrintNumber();
        a.print("Mathums");
        a.print(5.90);
        a.print(0.777);
        a.print(509);

    }

}
