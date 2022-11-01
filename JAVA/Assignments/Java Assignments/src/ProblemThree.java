import java.util.Scanner;
public class ProblemThree {
    public static void main(String[] args) {

        System.out.print("Enter no of Rows : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();

        for(int i=1;i<=n;i++)
        {
            for(int j=1;j<=i;j++)
                System.out.print(j);
            System.out.println("");
        }
    }
}
