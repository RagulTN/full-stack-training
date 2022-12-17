package TYBCA;
import java.util.*;
public class Marks {
    Scanner sc=new Scanner(System.in);
    int mark1,mark2,mark3,total,precentage;


    public void set_Marks()
    {
        System.out.println("Enter The  Mark one:");
        mark1 = sc.nextInt();
        System.out.println("Enter The  Mark Two:");
        mark2 = sc.nextInt();
        System.out.println("Enter The  Mark Three:");
        mark3 = sc.nextInt();
    }

    public void getMarks()
    {
        System.out.println(" Mark One:"+mark1);
        System.out.println(" Mark Two:"+mark2);
        System.out.println(" Mark Three:"+mark3);

         total=mark1+mark2+mark2;

         System.out.println("Total Marks :"+total);

         precentage =total/3;

         System.out.println("Precentage :"+precentage);



    }
}
