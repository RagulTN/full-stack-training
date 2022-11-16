import java.util.*;
class Staff1
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
        System.out.println(" Code : "+code);
        System.out.println(" Name : "+name);

    }


}
class Education extends Staff1
{
    String Qualification;
    public  void set_qualification()
    {
        System.out.print("Enter The  Qualification : ");
        Qualification =sc.next();

    }
}
class Teacher1 extends Education
{
    String sub;
    int publication;
    void set_details()
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
        System.out.println("Qualification :"+ Qualification);
    }

}
class Officer1 extends Education
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
        System.out.println("Qualification :"+ Qualification);

    }
}
class Typist1 extends Staff1
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
class regular1 extends Typist1
{
    protected  float Wage;
    public void set_Wage()
    {
        System.out.print("Set Wage : ");
        Wage=sc.nextFloat();
    }
    public void  show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println("SEt Wage :"+Wage);
    }

}
class Casual extends Typist1
{
    protected float Wage;
    public void set_Wage()
    {
        System.out.println("SEt Wage :");
        Wage=sc.nextFloat();
    }
    public void  show()
    {
        System.out.println(" Code :"+code);
        System.out.println(" Name :"+name);
        System.out.println("SET Wage :"+Wage);
    }
}

public class StaffDetails
{

    public static void main(String[] args)
    {

          Teacher1 t1=new Teacher1();
          t1.set_info();
          t1.get_info();
          t1.set_qualification();
          t1.set_details();
         System.out.println("---------About Teacher----------");
         t1.show();

         Officer1 o1=new Officer1();
         o1.set_info();
         o1.set_qualification();
         o1.set_details();
        System.out.println("--------About Officer----------");
        o1.show();

        Typist1 Ty=new Typist1();
        Ty.set_info();
        Ty.set_Speed();
        System.out.println("--------About Typist----------------");
        Ty.show();

        Casual c=new Casual();
        c.set_info();
        c.set_Wage();
        System.out.println("--------About Typist Casual----------------");
        c.show();

        regular1 r=new regular1();
        r.set_Wage();
        r.set_Wage();
        System.out.println("--------About Typist Regular----------------");
        r.show();

    }
}


