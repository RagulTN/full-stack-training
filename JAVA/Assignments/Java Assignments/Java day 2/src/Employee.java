class EmployeeDetails
{
    public int id;
    public int age;
    public String name;
    public String gender;
    public String dept;
    public String role;
    public String company;
    public double HRA;

    public double DA;
    public double GS;
    public  double incometax;
    public double netsalary;

    public void EmployeeDetails(int id, int age, String name, String gender)
    {

        this.id=id;
        this.age=age;
        this.name=name;
        this.gender =gender;
        System.out.println("employee id        : "+id);
        System.out.println("employee age       : "+age);
        System.out.println("employee name      : "+name);
        System.out.println("employee gender    : "+gender);


    }
    public void EmployeeDetails(String dept,String role,String company)
    {
        this.dept=dept;
        this.role =role;
        this.company=company;

        System.out.println("employee dept      : "+dept);
        System.out.println("employee role      : "+role);
        System.out.println("employee company   : "+company);


    }
    public void EmployeeDetails(int basic) {

        System.out.println(basic);
        HRA=basic*(10/100);
        DA=(73/100)*basic;
        GS= (basic+DA+HRA);
        incometax=(30/100)*GS;
        System.out.println(incometax);
        netsalary=GS-incometax;
        System.out.print("Net salary         : "+netsalary);
    }

}

public class Employee {
    public static void main(String[] args)
    {
        EmployeeDetails s1=new EmployeeDetails();

        s1.EmployeeDetails(100,21,"Ragul","male");
        s1.EmployeeDetails("Full stack Development","DevOps","Brimma");
        s1.EmployeeDetails(80000);

    }

}