public class Three {
    public static void main(String[] args)
    {
        try
        {
            int data=365/5;
            System.out.println(data);
        }
        catch(ArithmeticException e)
        {
            System.out.println(e);
        }
        finally
        {
            System.out.println("finally block is always executed");
        }
        System.out.println("rest of phe code...");
    }
}

