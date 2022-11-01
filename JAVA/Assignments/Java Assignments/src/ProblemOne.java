import java.util.Scanner;
public class ProblemOne {

    public static void main(String[] Strings) {

        Scanner input = new Scanner(System.in);

        System.out.print("X : ");
        double x = input.nextDouble();
        System.out.print("Y : ");
        double y = input.nextDouble();
        System.out.print("Z : ");
        double z = input.nextDouble();

        double res = y * y - 4.0 * x * z;

        if (res > 0.0) {
            double r1 = (-y + Math.pow(res, 0.5)) / (2.0 * x);
            double r2 = (-y - Math.pow(res, 0.5)) / (2.0 * x);
            System.out.println("Roots : " + r1 + " , " + r2);
        }
        else if (res == 0.0) {
            double r1 = -y / (2.0 * x);
            System.out.println("Root " + r1);
        }
        else {
            System.out.println("No real roots.");
        }
    }
}
