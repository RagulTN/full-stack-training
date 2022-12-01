 class A
{
     static void Hello()
    {
        System.out.println("Parent ");
    }
}
class B extends A
{
    static void Hello()
    {
        System.out.println("Child ");
    }
}

public class FIFTEEN {
    public static void main(String[] args)
    {
        B obj= new B();
        obj.Hello();
        A obj1=new B();
        obj1.Hello();
     }
}
