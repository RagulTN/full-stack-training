import java.io.*;
class Message{
    void method()throws IOException
    {
        throw new IOException("device error");
    }
}

public class Second {
    public static void main(String[] args)
    {
        try
        {
            Message m=new Message();
            m.method();
        }
        catch(Exception e)
        {
            System.out.println("exception handled  :"+e);
        }

        System.out.println("normal flow...");
    }
}

