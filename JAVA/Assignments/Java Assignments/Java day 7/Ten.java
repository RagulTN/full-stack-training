import java.util.*;

class WeightLimitExceeded extends Exception {
  WeightLimitExceeded(int x) {
    System.out.print(Math.abs(15 - x) + " kg : ");
  }
}

class Air_Line {
  Scanner in = new Scanner(System.in);
  public void accept() {
    System.out.println("Enter The weight in kg :");
    try {
      validWeight(in.nextInt());
    } catch (WeightLimitExceeded e) {
      System.out.println(e);
    }
  }

  void validWeight(int weight) throws WeightLimitExceeded {
    if (weight > 15)
      throw new WeightLimitExceeded(weight);
    else
      System.out.println("You are ready to fly!");
  }

}
public class Ten {
  public static void main(String[] args) {
    Air_Line ob = new Air_Line();
    ob.accept();
  }
}