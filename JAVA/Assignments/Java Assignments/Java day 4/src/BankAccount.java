import java.util.*;


class Account1
{
    public static  int min=500;
    String name;
    int Account_num;
    public float Price;
    Scanner sc=new Scanner(System.in);
    public void get_info()
    {
        System.out.println("Enter Name : ");
        name=sc.nextLine();
        System.out.println("Enter Account Number : ");
        Account_num=sc.nextInt();
        System.out.println("Enter opening Amount must > 500: ");
        Price=sc.nextFloat();


    }
    public void show()
    {
        System.out.print("Name: "+name);
        System.out.print("Account_number: "+Account_num);
        System.out.print("Amount: "+Price);
    }

}

class CurrentAcc extends Account1
{
    float deposit,withdraw;
    public void check_Bal()
    {

        System.out.println("price  : "+Price);
        if(Price<min)
        {

            System.out.println("Amount Should be >500");
        }
        Price=Price-150;

        System.out.println("You have debited amount 150 from your account Account balance is "+Price);

    }
    public void deposit()
    {
        System.out.print("Enter Amount to deposit : ") ;
        deposit =sc.nextFloat();
        show();
        Price=Price+deposit;
        System.out.println("Total Amount is : "+Price) ;
    }


    public void withdraw_Bal()
    {

        System.out.print("Enter Amount to withdraw : ");
        withdraw =sc.nextFloat();

        show();

        if (Price<500)
        {

            System.out.println("For withdraw Balance must >500 Rupee");
        }

        if (withdraw <Price)
        {

            Price=Price- withdraw;

            System.out.println("After Withdraw Balance : "+Price);
        }

else
        {

            System.out.print("Insufficient Balance cant not less than 500");
        }
        check_Bal();
     }

}
class SavingAcc extends Account1

{

    float deposit,withdraw,intr;

    public void deposit()
    {

        System.out.print("Enter Amount to deposit : ");

        deposit =sc.nextFloat();

        show();
        Price=Price+deposit;

        System.out.print("Total Amount is : "+Price);
    }
    public void checkInterest()
    {

        intr=(Price*2)/100;
        Price=Price+intr;
        System.out.println("Total Amount with interest is :"+Price) ;

    }
    public void withdraw_Bal()
{

    System.out.println("Enter Amount to withdraw.");
    withdraw=sc.nextFloat();

    show();

    if(withdraw<Price)
    {

        Price=Price-withdraw;

                System.out.println("After Withdraw Balance: "+Price);
    }

else
    {

        System.out.println("insufficient Balance");
    }
}
}



public class BankAccount
{

    public static void main (String[] args)
    {
        int count=0;
        Scanner sc=new Scanner(System.in);
        CurrentAcc cu=new CurrentAcc();
        SavingAcc sav=new SavingAcc();
        System.out.println("-------------Welcome to the Banking console----------");
        System.out.println("Choose account type.....");
        System.out.println("Press c  for current Account");
        System.out.println("Press s  for saving Account");
        System.out.print("Enter your Choice : ");
        String ch=sc.nextLine();
        if(ch.equalsIgnoreCase("c"))
        {       cu.get_info();
                cu.check_Bal();
            while(count!=4)
            {
                System.out.println("1.Display\n2.Deposit\n3.Withdraw\n4.Exit");
                System.out.println("Enter Your Choice");
                int choice = sc.nextInt();
                switch(choice)
                {
                    case 1: cu.show();
                        break;
                    case 2: cu.deposit();
                        break;
                    case 3: cu.withdraw_Bal();
                        break;
                    case 4: System.exit(0);
                        break;
                    default:System.out.println("Wrong Choice!");
                }
            }
        }
        else if(ch.equalsIgnoreCase("s"))
        {
            sav.get_info();
            while(count!=5)
            {
                System.out.println("1.Display\n2.Deposit\n3.Withdraw\n4Intrest\n5.Exit");
                System.out.println("Enter Your Coice");
                int cho=sc.nextInt();
                switch(cho)
                {
                    case 1: sav.show();
                        break;
                    case 2: sav.deposit();
                        break;
                    case 3: sav.withdraw_Bal();
                        break;
                    case 4: sav.checkInterest();
                        break;
                    case 5: System.exit(0);
                        break;
                    default:System.out.println("Wrong Choice!");
                }
            }
        }
        else
        {
            System.out.println("Wrong choice!");
        }
    }
}

