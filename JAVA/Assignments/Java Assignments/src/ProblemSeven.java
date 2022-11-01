import java.util.Arrays;
import java.util.Scanner;

public class ProblemSeven {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of elements in array : ");
        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int i=0; i<n; i++){
            arr[i] = sc.nextInt();
        }

        //1st question
        boolean found = false;
        int searchedValue = 2;
        for(int x : arr){
            if(x == searchedValue){
                found = true; break;
            }
        }
        System.out.println("searched element is present : " + found);

        //2nd question
        int index = -1;
        for (int i = 0; (i < arr.length) && (index == -1); i++) {
            if (arr[i] == 2) {
                index = i;
            }
        }
        System.out.println("index of element is " +index);

        //3rd question
        int[] arr_new = new int[arr.length-1];
        System.out.print("Enter index of element to be deleted : ");
        int j= sc.nextInt();
        for(int i=0,k=0; i<arr.length; i++){
            if(i!=j){
                arr_new[k]=arr[i];
                k++;
            }
        }
        System.out.println("Before deletion :" + Arrays.toString(arr));
        System.out.println("After deletion :" + Arrays.toString(arr_new));

        //4th question
        System.out.println("Maximum value : "+max(arr));
        System.out.println("Minimum value : "+min(arr));

        //5th question
        int ans = 0;
        for(int i = 0; i < arr.length; i++) {
            for( j = i + 1; j < arr.length; j++) {
                if(arr[i] == arr[j])
                    System.out.println("duplicate element : " + arr[j]);
            }
        }
    }
    public static int max(int[] array) {
        int max = 0;

        for(int i=0; i<array.length; i++ ) {
            if(array[i]>max) {
                max = array[i];
            }
        }
        return max;
    }
    public static int min(int[] array) {
        int min = array[0];

        for(int i=0; i<array.length; i++ ) {
            if(array[i]<min) {
                min = array[i];
            }
        }
        return min;
    }
}
