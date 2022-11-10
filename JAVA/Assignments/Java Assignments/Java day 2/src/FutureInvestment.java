import java.util.*;

public class FutureInvestment {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.print(" Investment amount : ");
        double investment = in.nextDouble();
        System.out.print(" Rate of interest : ");
        double rate = in.nextDouble();
        System.out.print(" Number of years : ");
        int year = in.nextInt();

        rate *= 0.01;

        System.out.println("Years  FutureValue");
        for(int i = 1; i <= year; i++) {
            System.out.printf(i + "    %11.2f\n", futureInvestment(investment, rate/12, i));
        }
    }

    public static double futureInvestment(double investment, double monthlyInterest, int years) {
        return investment * Math.pow(1 + monthlyInterest, years * 12);
    }
}
