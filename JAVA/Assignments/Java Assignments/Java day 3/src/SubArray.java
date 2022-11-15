import java.util.*;
public class SubArray {
    public  static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Array Elements : ");
        int n=sc.nextInt();
        int[] a = new int[100];

        for(int i = 0; i < n; i++)
        {
            a[i]=sc.nextInt();
        }
        System.out.print("Subarray  : ");

        for(int i=3;i<=8;i++)
        {
            System.out.print(a[i] + " ");
        }
    }
}
