import Book_Details.Book;
import EMPLOYEE.Employee;
import MANAGER.Manager;
import TYBCA.Marks;
import TYBCA.Subjects;
import java.util.*;

public class Main {
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        int select;

        System.out.println("Enter the problem to run : --press 1 or 2 or 3 or 4 or 5");
        select =sc.nextInt();

        switch (select)
        {
            case 1:
                Subjects sub=new Subjects();
                sub.set_Sub();
                Marks mark=new Marks();
                mark.set_Marks();
                sub.get_Sub();
                mark.getMarks();
                break;

            case 2  :
                Employee emp=new Employee();
                emp.set_Emp_Details();
                Manager man=new Manager();
                man.set_Manager_Details();
                emp.get_Emp_Details();
                man.get_Manager_Details();
                break;

            case 4:
                Book book=new Book();
                book.set_Book_Details();
                book.get_Book_Details();
                break;

            case 5:
                Dist d1 = new Dist(30, 58);
                Dist d2 = new Dist(d1);
                d1.disp();
                d2.disp();
                break;

            case 7:
                int a1=10;
                Integer a2=new Integer(a1);
                Integer a3=50;

                System.out.println("Autoboxing :"+a2+" "+a3);
                Integer i=new Integer(50);
                int b1=i;
                System.out.println("Unboxing :"+b1);

        }
    }
}