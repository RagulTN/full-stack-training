package EMPLOYEE;

import java.util.*;
public class Employee {
        int emp_No;
        String emp_Name;
        double emp_Salary;
        Scanner sc = new Scanner(System.in);

        public void set_Emp_Details ()
        {
            System.out.println("Enter The Employee Name :");
            emp_Name = sc.next();
            System.out.println("Enter The Employee ID :");
            emp_No = sc.nextInt();
            System.out.println("Enter The Employee salary :");
            emp_Salary = sc.nextDouble();
        }
        public void get_Emp_Details()
        {
            System.out.println(" The Employee Name :" + emp_Name);
            System.out.println(" The Employee ID :" + emp_No);
            System.out.println(" The Employee salary :" + emp_Salary);

        }

        public void gross_Salary(double emp_Salary){
            System.out.println(emp_Salary*12);
        }
       
    }

