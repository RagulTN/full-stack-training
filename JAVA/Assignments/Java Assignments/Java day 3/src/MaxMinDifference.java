import java.util.Scanner;

class MaxMinDifference
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        int n= sc.nextInt();
        int temp=0;
        int[] a=new int[100];
        for(int i=0;i<n;i++)
        {
            a[i]=sc.nextInt();
        }
        for(int i=0;i<n;i++)
        {
           System.out.print(a[i]+" ");
        }
        System.out.println(" ");
        int max=a[0],min=a[0];

        for(int i=0;i<n;i++){
            if(a[i]>max){
                max=a[i];
            }
            if(a[i]<min){
                min=a[i];
            }
        }
        System.out.println("Maximum difference : "+(max-min));
       for(int i=0;i<n;i++)
       {
           for (int j = 0; j < n; j++)
           {
               if (a[i] > a[j])
               {
                   temp = a[i];
                   a[i] = a[j];
                   a[j] = temp;
               }
           }
       }
       System.out.print("Minimum difference :"+(a[1]-min));
    }
}