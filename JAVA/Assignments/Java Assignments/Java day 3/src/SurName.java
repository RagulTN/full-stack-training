import java.util.*;
public class  SurName {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter your Name with initial : ");
        String name = sc.nextLine() ;
        System.out.println("The full name is: " + name);
        System.out.print("Initials with surname is: ");
        int len = name.length();
        name = name.trim();

        String str1 = "";
        for (int i = 0; i < len; i++) {
            char ch = name.charAt(i);
            if (ch != ' ') {
                str1 = str1 + ch;
            } else {
                System.out.print(Character.toUpperCase(str1.charAt(0)) + ". ");
                str1 = "";
            }
        }
        System.out.println(str1);

    }
}