package TYBCA;
import java.util.*;
public class Subjects {
    Scanner sc=new Scanner(System.in);
   public String Maths,Java,C;
    public void set_Sub()
    {
        System.out.println("Enter The Sub 1:");
        Maths= sc.next();
        System.out.println("Enter The Sub 2:");
        Java=sc.next();
        System.out.println("Enter The Sub 3:");
        C=sc.next();
    }
   public void get_Sub()
    {
        System.out.println("Enter The Sub 1:"+Maths);
        System.out.println("Enter The Sub 1:"+Java);
        System.out.println("Enter The Sub 3:"+C);
    }

}
