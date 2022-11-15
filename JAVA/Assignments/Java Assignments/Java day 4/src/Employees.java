import java.util.*;
class Staff
{
   public int code;
   public String name;
    Scanner sc=new Scanner(System.in);
   public void set_info()
    {
        System.out.println("Enter The Code :");
        code= sc.nextInt();
        System.out.println("Enter The Name :");
        name=sc.next();
    }
    public void get_info()
    {
        System.out.println("  Code :"+code);
        System.out.println("  Name :"+name);

    }
}
class Teacher extends Staff
{
    String sub;int publication;
   public void set_details()
    {
        System.out.println("Enter The Subject");
        sub=sc.next();
        System.out.println("Enter The Publication");
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
class Officer extends Staff
{
    char Grade;
    public void set_details()
    {
        System.out.println("Enter The Grade");
        Grade =sc.next().charAt(0);
    }
    public void show()
    {
        System.out.println(" Name :"+name);
        System.out.println(" Code :"+code);
        System.out.println(" GRADE :"+Grade);
    }
}
class Typist extends Staff
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
class regular extends Typist
{
      float Wage;
   public void set_Wage()
    {
        System.out.println("SEt Wage :");
        Wage=sc.nextFloat();
    }
    public void  show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println("SEt Wage :"+Wage);
    }
}
class CasualEmp extends Typist
{
     float Wage;
    public void set_Wage()
    {
        System.out.println("SEt Wage :");
        Wage=sc.nextFloat();
    }
    public void show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println("SET Wage :"+Wage);
    }
}

public class Employees
{
    public static void main(String[] args)
    {
          Teacher t1=new Teacher();
          t1.set_info();
          System.out.println("Staff Details...");
          t1.get_info();
          t1.set_details();
          System.out.println("Teacher Details....");
          t1.show();

           Officer o1=new Officer();
           o1.set_info();
           o1.set_details();
           System.out.println("Officer Details....");
           o1.show();

          Typist Ty=new Typist();
          Ty.set_info();
          Ty.set_Speed();
          System.out.println("Typist Details.....");
          Ty.show();

         CasualEmp c=new CasualEmp();
         c.set_info();
         c.set_Wage();
         System.out.println("Casual Typist Details....");
         c.show();

         regular r=new regular();
         r.set_Wage();
         r.set_Wage();
         System.out.println("Regular Typist Details.....");
         r.show();
    }
}
