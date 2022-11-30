import java.util.*;
class Int_Number
{
     int i;
    void printNum(int i)
    {
        this.i=i;
        System.out.println("the Num is :"+i);
    }
}
class Int_Number_1 extends Int_Number
{
    int j;
    void printNum(int j)
    {
        this.j=j;
         System.out.println("the Num is :"+j);
    }
}

public class Fourteen {
    public static void main(String[] args)
    {
       Int_Number i=new Int_Number();
       i.printNum(10);
       Int_Number_1 i1=new Int_Number_1();
       i1.printNum(202);
    }
}
