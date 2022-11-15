import java.util.Scanner;

public class ArrayFunctions {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of the array : ");
        int n = sc.nextInt();
        int[] arr = new int[n];

        System.out.print("Enter elements : ");
        for (int i = 0; i < arr.length ; i++) {
            arr[i] = sc.nextInt();
        }

        //1st
        int min = arr[0] ;
        for (int i = 0; i < arr.length ; i++) {
            if(arr[i]<min){
                min = arr[i];
            }
        }
        System.out.println("Minimum number in the array : " + min);

        //2nd
        int max = arr[0] ;
        for (int i = 0; i < arr.length ; i++) {
            if(arr[i]>max){
                max = arr[i];
            }
        }
        System.out.println("Maxmium number in the array : " + max);

        //3rd

        //4th
        System.out.println("Length of the array : " + arr.length);

        //5th
        for(int i= arr.length-1;i>=0;i--)
        {
            System.out.print(arr[i]+" ");
        }
    }

}
