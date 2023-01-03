import java.util.Scanner;

class Student1 {
  int roll, age;
  String name, course;
  Student1(String n, int r, int a, String c) {

    try {
      if (a >= 18)
        age = a;
      else
        throw new AgeNotWithInRangeException();
    } catch (AgeNotWithInRangeException e1) {
      System.out.println(e1);
    }
  }
  void display() {
    System.out.println("roll Name Age Course");
    System.out.println("——————— ———————  ——————— ———————");
    System.out.println(roll + " " + name + " " + age + " " + course);
  }
}

public class Seven {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter The Name1 :");
    String n = sc.next();
    System.out.println("Enter The Roll no :");
    int r = sc.nextInt();
    System.out.println("Enter The age :");
    int a = sc.nextInt();
    System.out.println("Enter The course :");
    String c = sc.next();

    Student1 student = new Student1(n, r, a, c);
    student.display();

  }
}