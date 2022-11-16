import java.util.*;

class Details2
{
    int id;
    String name;
    String Gender;
    String address;
    Scanner sc=new Scanner(System.in);
    public void GetDetails()
    {
        System.out.print("Enter The Number : ");
        id=sc.nextInt();
        System.out.print("Enter The name: ");
        name=sc.next();
        System.out.print("Enter The Gender: ");
        Gender=sc.next();
        System.out.print("Enter The Address: ");
        address=sc.next();
    }
    public void Details2()
    {
        System.out.println("The Number :"+id);
        System.out.println(" The name:"+name);
        System.out.println(" The Gender:"+Gender);
        System.out.println(" The Address :"+address);
    }
}
interface Admin
{

    public void set_Admin();
    public void get_Admin();

}
interface BankAccount1
{

    public void set_Acc();
    public void get_Acc();

}
class Combined extends Details2 implements Admin, BankAccount1
{
    String Designation;
    String Experience;
     int Acc_no;
     String Branch;
     double pay;

    public void set_Admin()
    {
        System.out.print("enter the Designation: ");
        Designation=sc.next();
        System.out.print("enter the Experience : ");
        Experience=sc.next();
    }
    public void  get_Admin()
    {
        System.out.print(" the Designation: "+Designation);
        System.out.print(" the Experience : "+Experience);
    }
    @Override
    public void set_Acc()
    {
        System.out.println("enter the ACC no:");
        Acc_no = sc.nextInt();
        System.out.println("enter the Branch Details :");
        Branch = sc.next();
        System.out.println("enter the Pay:");
        pay = sc.nextDouble();
    }
    @Override
    public void get_Acc()
    {
        System.out.println(" the ACC no:" + Acc_no);
        System.out.println(" the Branch Details :" + Branch);
        System.out.println(" the Pay:" + pay);
    }
}

class HybridInheritance

{
    public static void main(String args[])
    {
        Combined d = new Combined();
        d.GetDetails();
        d.set_Admin();
        d.set_Acc();
        d.Details2();
        d.get_Admin();
        d.get_Acc();
    }
}