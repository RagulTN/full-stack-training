import java.util.Scanner;

class Books {
    Scanner sc = new Scanner(System.in);
    int size;
    String[] author = new String[80];
    String[] title = new String[80];
    String[] publisher = new String[80];
    int[] stock = new int[100];
    double[] price = new double[100];
    int successful = 0;
    int unsuccessful = 0;

    void books() {
        System.out.print("Enter The Number Of books   :");
        size = sc.nextInt();
        for (int i = 0; i < size; i++) {
            System.out.print(" Details of book: " + i + 1 + "\n");
            System.out.print(" Author          :");
            author[i] = sc.next();
            System.out.print(" Title           :");
            title[i] = sc.next();
            System.out.print(" Price           :");
            price[i] = sc.nextInt();
            System.out.print(" Publisher       :");
            publisher[i] = sc.next();
            System.out.print(" Stock Available :");
            stock[i] = sc.nextInt();
            System.out.println("------------NEXT RECORD-------------");
        }
    }

    void book_detail() {

        System.out.println(" -------------- Book detail --------------- ");
        for (int i = 0; i < size; i++) {
            System.out.print(" Details of book: " + i + 1 + "\n");
            System.out.print(" Author          :" + author[i] + "\n");
            System.out.print(" Title           : " + title[i] + "\n");
            System.out.print(" Price           :" + price[i] + "\n");
            System.out.print(" Publisher       :" + publisher[i] + "\n");
            System.out.print(" Stock Available :" + stock[i] + "\n");

        }
    }
    void search() {

        String tit;
        String aut;

        System.out.print("Enter The title of book you want : ");
        tit = sc.next();
        System.out.print("Enter The Author : ");
        aut = sc.next();
        int count = 0;
        for (int i = 0; i < size; i++)
        {
            if (((title[i].compareTo(tit)) == 0) && ((author[i].compareTo(aut)) == 0))
            {
                count = 1;
                break;
            }
        }
        if (count == 0)
        {
            System.out.println("Book Not Available in Store");

        }
    }
    void edit_price()
    {
        System.out.println(" which book u want to edit price ");
        int c=sc.nextInt();
        System.out.print("----------To Edit Price-----------");
        float p ;

        for(int i=0;i<size;i++)
        {
            System.out.print("Enter new price: ");
            p=sc.nextFloat();
            price[i]=p;
        }
    }
    void buy() {
        for (int i = 0; i < size; i++) {
            if (i < 0) {

                System.out.println( " This book is not available ");
                unsuccessful++;
            }
            else if(i>0)
            {
                book_detail();

                System.out.println(" How many copies you want : ");
                int copy;
                copy=sc.nextInt();

                if (copy <= stock[i])

                    stock[i] =stock[i] - copy;

                double total_price;
                total_price = price[i] * copy;

                System.out.print( "Total price " + total_price  +" \n");
                successful++;
            }
            else{

                System.out.print(" Sorry your required copies is not available"+"\n");
                unsuccessful++;
            }
        }
    }
    void showtransaction()
    {
        System.out.print("Successful transaction   :"+successful+"\n"+"unsuccessful transaction   :"+unsuccessful);
    }
}





class ProblemThree {
    public static void main(String[] args)
    {
        Books b1=new Books();
        b1.books();
        b1.book_detail();
        b1.search();
        b1.edit_price();
        b1.buy();
        b1.book_detail();
        b1.showtransaction();

    }
}