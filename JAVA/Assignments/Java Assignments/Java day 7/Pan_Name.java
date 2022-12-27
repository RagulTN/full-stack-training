import javax.naming.InvalidNameException;
import java.util.Scanner;
import java.util.regex.*;
public final class Pan_Name {

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    String str1 = sc.next();
    String regex = "[A-Z]{3}[0-9]{7}";
    Pattern p = Pattern.compile(regex);
    try {
      Matcher m = p.matcher(str1);
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