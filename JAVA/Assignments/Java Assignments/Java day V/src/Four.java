abstract class Class_A
{
     void Class_A()
     {
         System.out.println("This Is Constructor Of Abstract Claas");
     }
     abstract void a_method();
     public void normal()
     {
         System.out.println("this is norma method");
     }
}
class Sun_Class extends Class_A
{


    @Override
    void a_method()
    {
        System.out.println("This Is Abstract  method");
    }
}


public class Four {
    public static void main(String[] args)
    {
         Sun_Class s=new Sun_Class();
         s.Class_A();
         s.a_method();
         s.normal();
    }
}
