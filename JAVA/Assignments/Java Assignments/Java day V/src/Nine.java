class INT_CHAR
{
    void Integer(int n,char a)
    {
        System.out.println(a+" "+n);
    }
    void Integer(char a,int n)
    {
        System.out.println(n+" "+a);

    }
}

public class Nine {
    public static void main(String[] args)
    {
        INT_CHAR i=new INT_CHAR();
        i.Integer(6,'M');
        i.Integer('R',7);
    }
}
