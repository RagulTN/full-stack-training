import java.util.Scanner;
import java.io.*;
class AgeNotWithInRangeException extends Exception {
  public String toString() {
    return ("Age is not  above 18 Please ReEnter the Age");
  }
}

class Student {
  int no, age;
  String name;

  Student(int r, String n, int a) {
    no = r;
    name = n;

    try {
      if (a >= 18)
        age = a;
      else
        throw new AgeNotWithInRangeException();
    } catch (AgeNotWithInRangeException e1) {
      System.out.println("" + e1);
    }
  }
  void display() {
    System.out.println("roll Name Age Course");
    System.out.println("——————— ———————  ——————— ———————");
    System.out.println(no + " " + name + " " + age);
  }
}
class Five {
  public static void main(String args[]) throws IOException {

    Scanner sc = new Scanner(System.in);
    System.out.println("Enter the Vehicle No :");
    int r = sc.nextInt();
    System.out.println("Enter the Name :");
    String n = sc.next();
    System.out.println("Enter the Age :");
    int a = sc.nextInt();

    Student s = new Student(r, n, a);
    s.display();
  }
}