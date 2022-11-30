class Degree1 {
    void getDegree() {
        System.out.println("I got a degree");
    }
}
class Undergraduate extends Degree1
{
    void getDegree() {
        System.out.println("I got Undergraduate ");
    }
}
class Postgradute extends Degree1
    {
        void getDegree()
        {
            System.out.println("I got Postgraduate ");
        }
    }


public class Twelve {

    public static void main(String[] args)
    {
        Degree1 d=new Degree1();
        d.getDegree();
        Undergraduate ug=new Undergraduate();
        ug.getDegree();
        Postgradute pg=new Postgradute();
        pg.getDegree();


    }
}

