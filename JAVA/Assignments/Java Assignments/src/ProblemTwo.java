import java.util.*;

public class ProblemTwo {
    public static void main(String[] args) {
        System.out.print("Enter Month number : ");
        Scanner sc = new Scanner(System.in);
        int month = sc.nextInt();

        if(month==2)
            System.out.println("Number of days is 28");

        else if(month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12)
            System.out.println("Number of days is 31");

        else
            System.out.println("Number of days is 30");
    }
}
