package Book_Details;
import java.util.*;
public class Book {
    String book_Name;
    double price;
    String author_Name;
    Scanner sc=new Scanner(System.in);
    public void set_Book_Details()
    {
        System.out.println("enter the book name :");
        book_Name =sc.next();
        System.out.println("enter the book Price :");
        price=sc.nextDouble();
        System.out.println("enter the book author_Name :");
        author_Name=sc.next();

    }
    public  void get_Book_Details()
    {
        System.out.println("the book name :"+book_Name);
        System.out.println(" the book price :"+price);
        System.out.println(" the book author :"+author_Name);

    }
}
