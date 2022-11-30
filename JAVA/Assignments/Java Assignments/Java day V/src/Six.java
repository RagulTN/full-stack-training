abstract  class Shape
{
    public float Area;
    abstract void Rectangale_Area();
    abstract void SquareArea();
    abstract void Circle_Area();
}
class Rectange extends Shape
{
    int l,b;
    Rectange(int l,int b)
    {
        this.l=l;
        this.b=b;
    }

    @Override
    void Rectangale_Area()
    {
        Area=l*b;
        System.out.println("Area of Rectange :"+Area);
    }

    @Override
    void SquareArea() {

    }

    @Override
    void Circle_Area() {

    }
}
class Circle extends Shape
{
    float pi;
    int r;
    Circle(float pi,int r)
    {
        this.pi=pi;
        this.r=r;
    }


    void Rectangale_Area()
    {

    }

    @Override
    void SquareArea() {

    }

    @Override
    void Circle_Area()
    {
        Area=pi*r*r;
        System.out.println("Square Area :"+Area);
    }

}
class Square extends Shape
{
    int a;
    Square(int a)
    {
        this.a=a;
    }
    void Rectangale_Area()
    {

    }

    @Override
    void SquareArea()
    {
        Area=a*a;
        System.out.println("Area of Rectange :"+Area);
    }

    @Override
    void Circle_Area() {

    }
}
public class Six {
    public static void main(String[] args)
    {
       Rectange r=new Rectange(70,50);
       r.Rectangale_Area();
       Circle c=new Circle(3.14F,40);
       c.Circle_Area();
       Square s=new Square(40);
       s.SquareArea();

    }
}
