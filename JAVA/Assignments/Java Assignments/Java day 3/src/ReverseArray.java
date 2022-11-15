import java.util.Scanner;

public class ReverseArray {
    public static void main(String[] args)
    {

        Scanner sc=new Scanner(System.in);
        System.out.print("Enter The array 1 number of elements");
        int n1=sc.nextInt();
        int []arr1=new int[10];
        for(int i=0;i<n1;i++)
        {
            arr1[i]=sc.nextInt();
        }
        for(int i=n1-1;i>=0;i--)
        {
            System.out.print(arr1[i]+" ");
        }
    }

}
