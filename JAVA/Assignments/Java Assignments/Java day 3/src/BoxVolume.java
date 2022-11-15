import java.util. *;
class BoxVolume

{
    public static  double volume(double x, double y, double z)
    {
        double vol=x*y*z;
        return vol;
    }
    public static void main(String[] args) {
        Scanner sc=new Scanner (System.in);
        System.out.print("Enter length : ");
        double l=sc.nextDouble();
        System.out.print("Enter breath : ") ;
        double b=sc.nextDouble();
        System.out.print("Enter height : ") ;
        double h=sc.nextDouble();
        System.out.println ("Volume =" +volume(l, b, h)) ;
    }
}