abstract class Animals
{
     abstract void cats();
     abstract void dogs();
}
class Dog extends  Animals
{
    @Override
    void dogs() {
        System.out.println("DOGS bark");

    }
    @Override
    void cats()
    {

    }

}
class Cats extends Animals
{

    @Override
    void cats() {
        System.out.println(" cats meow");

    }
    @Override
    void dogs()
    {

    }


}


public class Five {
    public  static void main(String[] args)
    {
          Cats c=new Cats();
          c.cats();
          Dog d=new Dog();
          d.dogs();
    }
}
