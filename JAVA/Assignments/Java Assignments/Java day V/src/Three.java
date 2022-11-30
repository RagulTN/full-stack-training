abstract class Marks
{
   public int Total;
   public float avg;
    abstract  void GetPercentage();
 }
class StudentA extends  Marks
{
    int a,b,c;

    StudentA(int a,int b,int c) {
        this.a = a;
        this.b=b;
        this.c=c;
    }
    @Override
    void GetPercentage()
    {
         Total = a + b + c;
         avg =Total/3;
         System.out.println("Student A Average is :"+avg);
    }
}
class StudentB extends  Marks
{
    int a,b,c,d;
    StudentB(int a,int b,int c,int d)
    {
        this.a = a;
        this.b=b;
        this.c=c;
        this.d=d;
    }

    void GetPercentage()
    {
        Total = a + b + c;
        avg=Total/4;
        System.out.println("Student A AVERAGE is :"+avg);
    }



}

public class Three {
    public static void main(String[] args)
    {
        StudentA A=new StudentA(90,80,70);
        A.GetPercentage();
        StudentB B=new StudentB(70,80,67,66);
        B.GetPercentage();

    }
}
