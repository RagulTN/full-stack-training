import java.util.Scanner;

class MarksOutOfBoundException extends Exception {
  public String toString() {
    return "Enter marks in between 1 to 100";
  }
}
class Student2 {
  int rno;
  float[] marks;
  Scanner sc = new Scanner(System.in);
  Student2() {
    rno = 0;
    marks = new float[4];
    for (int i = 0; i < 4; i++)
      marks[i] = 0;
  }
  public void accept() {
    System.out.println("Enter roll no :");
    try {
      rno = sc.nextInt();
      System.out.println("Enter The 4 sub Marks :");
      for (int i = 0; i < 4; i++) {
        System.out.println("Enter The mark" + i + 1);
        marks[i] = sc.nextInt();
        if (marks[i] < 0 || marks[i] > 100)
          throw new MarksOutOfBoundException();
      }
    } catch (MarksOutOfBoundException me) {
      System.out.println(me);
    } catch (ArrayIndexOutOfBoundsException e) {
      System.out.println("Array index out of bounds" + e);
    }

  }

  public void display() {
    System.out.println("Roll no\tMarks1\tMarks2\tMarks3\tMarks4");
    System.out.print(rno + "\t");
    for (int i = 0; i < 4; i++)
      System.out.print(marks[i] + "\t");
  }

  public static class Nine {
    public static void main(String[] args) {
      Student2 s = new Student2();
      s.accept();
      s.display();
    }
  }

}