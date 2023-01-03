import java.util.Scanner;

class NumberZeroException extends Exception {
  public String toString() {
    return ("Number is 0");
  }
}
class Prime_check {
  int num;

  void check_Num(int n) {
    num = n;
    try {
      if (num == 0) {
        throw new NumberZeroException();
      } else {
        prime_Num(num);
      }
    } catch (NumberZeroException ex) {
      System.out.println(ex);
    }
  }

  void prime_Num(int n) {
    num = n;
    int cnt = 0;
    for (int i = 2; i <= num / 2; i++)
      if (num % i == 0) {
        cnt++;
        break;
      }
    if (cnt == 0)
      System.out.println(num + " Number is prime");
    else
      System.out.println(num + " Number is not prime");
  }
}
public class Eight {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter The Number ");
    int num = sc.nextInt();

    Prime_check n = new Prime_check();
    n.check_Num(num);

  }
}