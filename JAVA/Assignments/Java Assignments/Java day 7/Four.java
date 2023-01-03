import javax.naming.InvalidNameException;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Four {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String n = sc.nextLine();
    String regex = "^[a-zA-Z]*$";
    Pattern p = Pattern.compile(regex);
    try {
      Matcher m = p.matcher(n);
      boolean b = m.find();
      System.out.println("try :" + m.matches());
      if (!b) {
        throw new InvalidNameException();
      }
    } catch (InvalidNameException e) {
      System.out.println(e);

    }

  }

}