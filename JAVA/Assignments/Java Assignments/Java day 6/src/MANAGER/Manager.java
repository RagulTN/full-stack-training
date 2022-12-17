package MANAGER;

import EMPLOYEE.Employee;
import java.util.*;

public class Manager  extends Employee
{
    Scanner sc=new Scanner(System.in);
    String dept_Name ;
   public double incentive;

    public void set_Manager_Details()
    {
        System.out.println("enter the departname :");
        dept_Name=sc.next();
        System.out.println("enter the incentive :");
        incentive=sc.nextDouble();
    }

    public void get_Manager_Details()
    {
        System.out.println(" Enter department name : "+dept_Name);
        System.out.println(" Enter incentives : "+incentive);

        Employee emp=new Employee();
        emp.gross_Salary(incentive);
    }




}
