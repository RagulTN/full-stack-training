import java.util.*;
class Customer
{
    Scanner sc=new Scanner(System.in);
    String[] name =new String[100];
    String[] address=new String[100];
    int[] age =new int[100] ;
    String[] accType =new String[100];
    String[] branchType=new String[100];
    int n;
    void get_User()
    {
        System.out.println("Enter The number of Users Acc:");
        n=sc.nextInt();
        for(int i=0;i<n;i++)
        {
            System.out.println("Enter The name :" );
            name[i]=sc.next();
            System.out.println("Enter The Address :" );
            address[i]=sc.next();
            System.out.println("Enter The age :" );
            age[i]=sc.nextInt();
            System.out.println("Enter The Acc_Type :");
            accType[i]=sc.next();
            System.out.println("Enter The branch_Type :");
            branchType[i]=sc.next();

        }
    }
    void display()
    {
        System.out.println("*****--------Customer Details------******");
        for(int i=0;i<n;i++)
        {
            System.out.println("Name :"+name[i]);
            System.out.println("Adderess :"+address[i]);
            System.out.println("Age :"+age[i]);
            System.out.println("Acc_Type :"+accType[i]);
            System.out.println("Branch_Type :"+branchType[i]);
        }
    }
}
class RBI

{
    double Price= 10.433,A;
    double rate_int=4;
    int n=5;
    int num_years=4;

    int time=3;
    double withLimit=0;

     void setWithdrawalLimit()
     {

         String accType = null;
         if (accType.equals("savings")) {
                withLimit = 1000;
            } else {
                withLimit = 500;
            }
            System.out.println("With draw limit :" + withLimit);

     }

}

class SBI extends RBI
{
    void setInterestRate()
    {
        A=(Price*num_years*rate_int)/time;
        System.out.println("SBI Interset_Rate :"+A);

    }
}

class ICICI extends RBI
{
    void setInterestRate()
    {
        A=(Price*rate_int)/num_years+time;
        System.out.println("ICICI Interest_Rate :"+A);

    }
}
class PNP extends RBI
{
    void setInterestRate()
    {
        A = (Price * (1 + (rate_int / num_years))) *time;
        System.out.println("PNP Interest_Rate :"+A);

    }
}
public class Sixteen
{
    public static void main(String args[])
    {
        Scanner sc=new Scanner(System.in);
        Customer C=new Customer();
        SBI sbi = new SBI();
        RBI rbi=new RBI();
        PNP pnp=new PNP();
        ICICI icici=new ICICI();

        System.out.println("YOU WANT TO BE ACC OPEN :");
        String S;
        S=sc.next();
         switch (S)
         {
             case "yes":
                     C.get_User();
                     C.display();
                     rbi.setWithdrawalLimit();
                     sbi.setInterestRate();
                     icici.setInterestRate();
                     pnp.setInterestRate();
                     break;
             case "no":
                  System.out.println("Please Rerun The program");
         }


    }
}
