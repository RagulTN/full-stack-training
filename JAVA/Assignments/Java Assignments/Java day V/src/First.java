abstract class Parent
{
    abstract void message();


}
class Sub extends Parent
{
   void message()
   {
       System.out.println("This IS first Sub class ");
   }
}
class Sub1 extends Parent
{
    void message()
    {
        System.out.println("This IS Second Sub class ");

    }
}
public class First
{
    public static void main(String[] args)
    {
           Sub s1=new Sub();
           s1.message();
           Sub1 s2=new Sub1();
           s2.message();
    }
}

