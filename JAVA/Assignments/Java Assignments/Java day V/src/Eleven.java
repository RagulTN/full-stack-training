import java.util.*;
class Student {
    String[] name = new String[100];
    int[] age = new int[100];
    String[] address = new String[100];
    int n;
    Scanner sc = new Scanner(System.in);

    public void Student(String unknown, int a, String not_available)
    {


        System.out.println("Enter The Number Of Students :" );
        n = sc.nextInt();
        for (int i = 0; i < n; i++)
        {
            System.out.print(" Details of Student: " + i + 1 + "\n");
            System.out.println("Enter The Name :");
            name[i] = sc.next();
            System.out.println("Enter The age :");
            age[i] = sc.nextInt();
            System.out.println("Enter The Address :");
            address[i] = sc.next();
        }


    }
    public void Student(String unknown, int a) {


        System.out.println("Enter The Number Of Students  :");
        n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            System.out.print(" ------**********Details of Student:***********----------- " + i + 1 + "\n");
            System.out.println("Enter The Name :");
            name[i] = sc.next();
            System.out.println("Enter The age :");
            age[i] = sc.nextInt();

        }
    }
        void display()
        {
            System.out.println("---*****Student Details*******-------");
            for(int i=0;i<n;i++)
            {
                System.out.print(" Details of Student: " + i + 1 + "\n");
                System.out.println("Student Name :"+name[i]);
                System.out.println("Student Age :"+age[i]);
                System.out.println("Student Address :"+address[i]);


            }
        }
        void display1()
        {
            System.out.println("---*****Student Details*******-------");
            for(int i=0;i<n;i++)
            {
                System.out.print("---------********Details of Student:--------*********** " + i + 1 + "\n");
                System.out.println("Student Name :"+name[i]);
                System.out.println("Student Age :"+age[i]);



            }
        }


    }

    public class Eleven
    {
        public static void main(String[] args) {
            Student s = new Student();
            Scanner sc=new Scanner(System.in);
            System.out.println("enthe THE Char  :if char==A (Student A) || char==B (Student B)  :");
            char A=sc.next().charAt(0);

            if(A=='A')
            {
                s.Student("unknown", 0, "not available");
                s.display();

            } else if (A=='B')
            {
                s.Student("unknown",0);
                s.display1();
            }
            else
            {
                System.out.println("Please Check The Correct Value");
            }

        }
    }



