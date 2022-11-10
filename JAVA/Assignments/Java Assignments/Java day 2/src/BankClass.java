
import java.io.*;
import java.util.*;


class Bank
{

    Scanner scan=new Scanner(System.in);
    public String nameOfDepositor;
    public int accNumber;
    public String accType;
    public double balanceAmount;

    public double accno = scan.nextDouble();

    public void assignValues(String nameOfDepositor, String accType, double balanceAmount)
    {
        this.nameOfDepositor=nameOfDepositor;
        this.accType=accType;
        this.balanceAmount=balanceAmount;

        Random random = new Random();

        this.accNumber=random.nextInt(1000000);
        System.out.println("Your new account number is: "+accNumber);
    }
    public void depositAmount(double amount)
    {
        System.out.print("enter the Acc NO :");
        accno=scan.nextDouble();
        if(((accNumber!=accno)))
            System.out.println("!You don't have bank account to deposit\nNote:please assign values to create an account");
        else
        {
            balanceAmount+=amount;
            System.out.println("Amount deposited successfully...");
        }
    }
    public void withdrawAmount(double amount)
    {
        System.out.print("enter Your Acc No :");
        accno= scan.nextDouble();
        if(accNumber!=accno)
            System.out.println("!You don't have bank account to credit\nNote:please assign values to create an account");
        else if(balanceAmount>amount)
        {
            balanceAmount-=amount;
            System.out.println("Amount credited successfully...");
        }
        else
            System.out.println("! Insufficient balance");
    }
    public void displayDetails()
    {
        System.out.print("enter Your Acc NO :");
        accno= scan.nextDouble();
        if(accNumber!=accno)
            System.out.println("!You don't have bank account\nNote:please assign values to create an account");
        else
        {
            System.out.println("Name of the Depositor: "+nameOfDepositor);
            System.out.println("Balance amount in the account: "+balanceAmount);
        }
    }
    public void getInput()
    {
        System.out.println("1. Open account");
        System.out.println("2. Deposit amount");
        System.out.println("3. Withdraw amount");
        System.out.println("4. Account details");
        System.out.println("5. Exit");
        System.out.print("Please choose from above (Eg.2): ");
    }
}

class  ProblemTwo
{
    public static void main(String[] s)  throws IOException
    {
        System.out.println("---------Welcome to the Banking console-----");
        System.out.println("Press 0 to start...");
        Bank newAccount=new Bank();
        Scanner scan=new Scanner(System.in);
        boolean process=true;
        int state=0;
        int n;

        while(state==0)
        {
            newAccount.getInput();
            int option=scan.nextInt();

            if(option==1)
            {
                System.out.print("Enter how many Account do you want to Store:" + "\n");
                n = scan.nextInt();
                for(int i=0;i<n;i++) {
                    System.out.print("Enter your name: ");
                    String nameOfDepositor = scan.next();
                    System.out.print("Enter your account type: ");
                    String accType = scan.next();
                    System.out.print("Enter your opening balance: ");
                    double balanceAmount = scan.nextDouble();

                    newAccount.assignValues(nameOfDepositor, accType, balanceAmount);
                }
            }
            else if(option==2)
            {
                System.out.print("Enter amount to deposit: ");
                newAccount.depositAmount(scan.nextDouble());
            }
            else if(option==3)
            {
                System.out.print("Enter amount to withdraw: ");
                newAccount.withdrawAmount(scan.nextDouble());
            }
            else if(option==4)
            {
                newAccount.displayDetails();
            }
            else if(option==5)
            {
                state=1;
                System.out.println("THANK YOU");
            }

            System.out.print ("press 0 to continue... ");
            state=scan.nextInt();
        }
    }
}