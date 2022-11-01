public class ProblemSix {
    public static void main(String[] args) {
        pattern(5);
    }
    public static void pattern(int n)
    {
        for(int row = 0; row<2*n; row++)
        {
            int colInRow = row>n ? 2*n-row : row;
            int noOfSpaces = n-colInRow;
            for(int spaces=0; spaces<noOfSpaces; spaces++)
            {
                System.out.print(" ");
            }
            for(int col = 0; col<colInRow; col++)
            {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}

