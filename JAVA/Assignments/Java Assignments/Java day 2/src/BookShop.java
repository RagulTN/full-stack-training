import java.util.*;

class Book
{
    Scanner sc=new Scanner(System.in);
    String[] title =new String[100];
    String[] Author =new String[100];
    double[] price=new double[100] ;
    String[] publisher=new String[100];
    int[] stock =new int[100];
    int n;

    public void getInput() {
        System.out.print("How many records of book you want to store:" + "\n");
        n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            System.out.print(" Book id         : " + i +"\n");
            System.out.print(" Author          :" );
            Author[i] = sc.next();
            System.out.print(" Title           :");
            title[i]=sc.next();
            System.out.print(" Price           :");
            price[i]=sc.nextInt();
            System.out.print(" Publisher       :");
            publisher[i]=sc.next();
            System.out.print(" Stock Available :");
            stock[i]=sc.nextInt();
            System.out.println("-------------------------");
        }
    }
    public void display() {

        for(int i=0;i<n;i++) {
            System.out.print(" Book id         : " + i + "\n");
            System.out.print(" Author          : " + Author[i] + "\n");
            System.out.print(" Title           : "+ title[i] +"\n");
            System.out.print(" Price           : "+ price[i] +"\n");
            System.out.print(" Publisher       : "+ publisher[i] +"\n");
            System.out.print(" Stock Available : "+ stock[i] +"\n");
            System.out.println("-------------------------");


        }
    }

    public void searchBook()
    {
        String title1;
        String author1;
        int t=0;
        System.out.print("What Book you want ? ");
        System.out.print("Enter The Title : ");
        title1=sc.next();
        System.out.print("Enter The Author : ");
        author1=sc.next();
        for(int i=0;i<n;i++)
        {
            if(((title[i].compareTo(title1))==0)&&((Author[i].compareTo(author1))==0))
            {
                t=1;
                System.out.print("---------Book Details-------"+ "\n");
                System.out.print(" Book id         : " + i + 1 + "\n");
                System.out.print(" Author          : " +Author[i]+ "\n");
                System.out.print(" Title           : "+title[i]+"\n");
                System.out.print(" Price           : "+price[i]+"\n");
                System.out.print(" Publisher       : "+publisher[i]+"\n");
                System.out.print(" Stock Available : "+stock[i]+"\n");

                break;
            }
        }
        if(t==0){
            System.out.print("Book Not Available in Store");

        }



    }

}
class ProblemOne
{
    public static void main (String[] args)
    {
        System.out.println("------------Welcome to Book Store!------------");
        Book newAccount=new Book();
        Scanner sc=new Scanner(System.in);
        int n;
        newAccount.getInput();
        newAccount.display();
        newAccount.searchBook();

    }
}
              