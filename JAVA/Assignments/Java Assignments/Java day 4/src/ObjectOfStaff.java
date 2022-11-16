import java.util.*;
class Staff2
{
    public int code;
    public String name;
    Scanner sc=new Scanner(System.in);
    public void set_info()
    {
        System.out.print("Enter The Code : ");
        code= sc.nextInt();
        System.out.print("Enter The Name : ");
        name=sc.next();

    }
    public void get_info()
    {
        System.out.println("  Code :"+code);
        System.out.println("  Name :"+name);
    }


}
class Teacher2 extends Staff2
{
    String sub;int publication;



    public void set_details()
    {

        System.out.print("Enter The Subject : ");
        sub=sc.next();
        System.out.print("Enter The Publication : ");
        publication=sc.nextInt();
    }
    public void show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println(" Subject :"+sub);
        System.out.println("Publication :"+publication);
    }

}
class Officer2 extends Staff2
{
    char Grade;
    public void set_details()
    {
        System.out.print("Enter The Grade : ");
        Grade =sc.next().charAt(0);

    }
    public void show()
    {
        System.out.println(" Name :"+name);
        System.out.println(" Code :"+code);
        System.out.println(" GRADE :"+Grade);
    }
}
class Typist2 extends Staff2
{
    float speed;
    public void set_Speed()
    {
        System.out.println("SEt speed :");
        speed=sc.nextFloat();
    }
    public void show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println("speed :"+speed);

    }
}
public class ObjectOfStaff
{

    public static void main(String[] args)
    {
        Teacher2 t1=new Teacher2();
        t1.set_info();
        System.out.println("------------About Staff-----------");
        t1.get_info();
        t1.set_details();
        System.out.println("------------About Teacher-----------");
        t1.show();

        Officer2 o1=new Officer2();
        o1.set_info();
        o1.set_details();
        System.out.println("------------About Officer-----------");
        o1.show();

        Typist2 Ty=new Typist2();
        Ty.set_info();
        Ty.set_Speed();
        System.out.println("------------About Typist-----------");
        Ty.show();

    }
}
