import java.util.Scanner;

class NumberFormatException extends Exception {
  public String toString() {
    return "Please Enter The float value ";
  }
}
class NoEqualException extends Exception {
  public String toString() {

    return "Please Enter The float value :3.14";
  }
}
class Number {
  float num1 = (float) 3.14;

  public void check_Num(float s) {

    try {

      if (s != num1) {
        throw new NoEqualException();
      } else {
        System.out.println("the num is :" + s);
      }
    } catch (NoEqualException e) {
      System.out.println(e);
    }
  }

}
public class Six {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    float s = sc.nextFloat();
    try {
      if (s != s * 1.0) {

        throw new NumberFormatException();
      } else {
        Number n = new Number();
        n.check_Num(s);
      }
    } catch (NumberFormatException e) {
      System.out.println(e);

    }

  }
}