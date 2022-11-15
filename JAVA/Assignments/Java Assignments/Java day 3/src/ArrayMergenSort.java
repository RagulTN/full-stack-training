import  java.util.*;
public class ArrayMergenSort {

        public static void main (String[] args)
        {
            Scanner sc=new Scanner(System.in);
            System.out.print("Enter No of elements in array1 : ");
            int n1=sc.nextInt();
            int []arr1=new int[n1];
            for(int i=0;i<n1;i++)
            {
                arr1[i]=sc.nextInt();
            }
            System.out.print("Enter No of elements in array2 : ");
            int n2=sc.nextInt();
            int [] arr2=new int[n2];
            for(int i=0;i<n2;i++)
            {
                arr2[i]=sc.nextInt();
            }

            int[] merge = new int[n1 + n2];
            int i = 0, j = 0, k = 0, x;

            while (i < n1)
                merge[k++] = arr1[i++];
            while (j < n2)
                merge[k++] = arr2[j++];

            System.out.print("Merged Array : ");
            for (x = 0; x < n1 + n2; x++)
                System.out.print(merge[x] + " ");
        }
    }


