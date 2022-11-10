import java.util.Scanner;

class Student
{
    int id_of_Student;
    String name_of_Student;
    String Dept_of_Student;
    int age_of_Student;
    String Gender_of_Student;
    int Total;float average;
    Student(int id,String name,String Dept,int age,String Gender)
    {
        id_of_Student=id;
        name_of_Student=name;
        Dept_of_Student=Dept;
        Gender_of_Student=Gender;
        age_of_Student=age;


    }
    Student(int mark1,int mark2,int mark3,int mark4,int mark5)
    {
        Total=mark1+mark2+mark3+mark4+mark5;
        average=Total/5;

    }
    void details()
    {
        System.out.println("*******----STUDENT DETAILS----*******");
        System.out.println("Student id         :"+id_of_Student);
        System.out.println("Student Name       :"+name_of_Student);
        System.out.println("Student Department :"+Dept_of_Student);
        System.out.println("Student  Age       :"+age_of_Student);
        System.out.println("Student Gender     :"+Gender_of_Student);

    }
    void StudentMarks()
    {

        System.out.println("--------------------------------");
        System.out.println("Student Total Marks    : "+Total);
        System.out.println("Student  Average Of Marks     : "+average);
        System.out.print("Student Grade : ");
        if(average<50)
        {
            System.out.print("B GRADE");
        } else if (average>=50 && average<=80) {
            System.out.print("A GRADE");
        }
        else
        {
            System.out.print("O Grade");
        }
        System.out.println("--------------------------------");
    }
}

public class StudentDetails {
    public  static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter THe Student id : ");
        int id= sc.nextInt();
        System.out.print("Enter THe Student Name : ");
        String name=sc.next();
        System.out.print("Enter THe Student Dept : ");
        String Dept=sc.next();
        System.out.print("Enter THe Student age : ");
        int age=sc.nextInt();
        System.out.print("Enter THe Student gender : ");
        String gender=sc.next();
        System.out.println("--------- THe Student Mark----------");
        System.out.print("Enter THe Student Mark 1 : ");
        int marks1=sc.nextInt();
        System.out.print("Enter THe Student Mark 2 : ");
        int marks2=sc.nextInt();
        System.out.print("Enter THe Student Mark 3: ");
        int marks3=sc.nextInt();
        System.out.print("Enter THe Student Mark 4 : ");
        int marks4=sc.nextInt();
        System.out.print("Enter THe Student Mark 5 : ");
        int marks5=sc.nextInt();
        Student s1=new Student(id,name,Dept,age,gender);
        Student s2=new Student(marks1,marks2,marks3,marks4,marks5);
        s1.details();
        s2.StudentMarks();
    }
}