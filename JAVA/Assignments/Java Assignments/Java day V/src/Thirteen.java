class Banks
{
    int r;
    int getBalance(int n)
    {
        this .r=n;
        return n;
    }
}
class Bank_A extends Banks
{
    int getBalance(int r)
    {
        this.r=r;
        return r;
    }
}
class Bank_B extends Banks
{
    int getBalance(int r)
    {
        this.r=r;
        return r;
    }
}
class Bank_C extends Banks
{
    int getBalance(int r)
    {
        this.r=r;
        return r;
    }
}

public class Thirteen {
    public static void main(String[] args)
    {
         Banks b=new Banks();
         System.out.println("BANKS A"+" "+b.getBalance(0));

         Bank_A a=new Bank_A();
         System.out.println("BANKS B"+" "+a.getBalance(1500));

        Bank_B c=new Bank_B();
        System.out.println("BANKS C"+" "+c.getBalance(1000));

        Bank_C bc=new Bank_C();
        System.out.println("BANKS D"+" "+bc.getBalance(2000));
    }
}
