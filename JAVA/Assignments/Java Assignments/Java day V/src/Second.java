abstract class Bank
{
    abstract void getBalance();
}
class BankA extends Bank
{
    int n=100;
    void getBalance()
    {
       System.out.println(" BankA Deposited balance :"+n);
    }
}
class BankB extends Bank
{
    int n=150;
    void getBalance()
    {
        System.out.println(" BankA Deposited balance :"+n);
    }
}
class BankC extends Bank
{
    int n=200;
    void getBalance()
    {
        System.out.println(" BankA Deposited balance :"+n);
    }
}

public class Second {
    public static void main(String[] args)
    {
        BankA A=new BankA();
        A.getBalance();
        BankB B=new BankB();
        B.getBalance();
        BankC C=new BankC();
        C.getBalance();
    }
}
