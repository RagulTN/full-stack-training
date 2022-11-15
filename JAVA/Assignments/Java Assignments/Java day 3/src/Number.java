import java.util.*;
class Number
{
    public static void main(String args[])
    {
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter 20 numbers : ");
        int a[] ={0,0,0,0,0};
        for(int i=1;i<=20;i++)
        {
            int x=sc.nextInt();
            if(x>0)
                a[0]=a[0]+1;
            if(x<0)
                a[1]=a[1]+1;
            if(x==0)
                a[4]=a[4]+1;
            if(x%2==1)
                a[2]=a[2]+1;
            else
                a[3]=a[3]+1;
        }
        System.out.println("Number of positive numbers: "+a[0]);
        System.out.println("Number of negative numbers: "+a[1]);
        System.out.println("Number of odd numbers: "+a[2]);
        System.out.println("Number of even numbers: "+a[3]);
        System.out.println("Number of zeros: "+a[4]);
    }
}