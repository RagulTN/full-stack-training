import java.util.*;
public class StringDemo {
    public static void main(String[] args) {
        String myStr = "Hello";
        String str2 = "Ragul";
        int len = myStr.length();
        char ch = myStr.charAt(0);
        String con = myStr.concat(" ").concat(str2);
        boolean check = myStr.equals(str2);

        System.out.println("length : "+ len);
        System.out.println("charAt : "+ch);
        System.out.println("concat : "+con);
        System.out.println("equals : "+check);
        System.out.println("starts with : "+myStr.startsWith("Hel"));
        System.out.println("ends with : "+myStr.endsWith("llo"));
        System.out.println("Substring from 2: " +myStr.substring(2));
        System.out.println("last index : "+myStr.lastIndexOf("o"));
        System.out.println("index of : "+myStr.indexOf('e'));

        StringBuilder s = new StringBuilder();
        s.append(myStr);

        System.out.println("reverse of "+ myStr +" : "+s.reverse());


    }
}
