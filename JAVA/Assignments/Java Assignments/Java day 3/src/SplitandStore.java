import java.util.*;
public class  SplitandStore {
     static void print(int arr[])
    {
        for (int var : arr) {
            System.out.print(var + " ");
        }

        System.out.println();
    }
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Number Of Elements : ");
        int m=sc.nextInt();
        int[] arr=new int[m];
        System.out.print("Enter The Number : ");

        for(int i=0;i<m;i++)
        {
            arr[i]=sc.nextInt();
        }
        int  n=arr.length;
        System.out.println("Enter position to split.");
        int pos = sc.nextInt();
         if (pos > 0 && pos < n)
        {
            int first[] = new int[pos];
            int second[] = new int[n - pos];
            for (int i = 0; i < pos; i++) {
                first[i] = arr[i];
            }
            for (int i = 0; i < n - pos; i++) {
                second[i] = arr[i + pos];

            }
            print(first);
            print(second);
        }
        else {
            System.out.println("Invalid position.");
        }
    }
}
