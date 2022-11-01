import java.util.Scanner;

public class ProblemFive {
    public static void main(String[] args) {
        int num = 1;
        Scanner in = new Scanner(System.in);
        System.out.print("Enter the no of Rows : ");
        int n = in.nextInt();
        System.out.println("Floyd's triangle :-");
        for ( int x = 1 ; x <= n ; x++ )
        {
            for (int j = 1 ; j <= x ; j++ )
            {
                System.out.print(num+" ");
                num++;
            }
            System.out.println();
        }
    }
}
