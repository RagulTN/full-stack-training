class Shapes
{
    void Shape1(int l,int b)
    {
        System.out.println("Aea Of Rectangle :"+l*b);
    }
    void Shape1(int a)
    {
        System.out.println("Aea Of Square :"+a);
    }
}

public class Ten {
    public static void main(String[] args)
    {
        Shapes s=new Shapes();
        s.Shape1(20,50);
        s.Shape1(40);
    }
}
