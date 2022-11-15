import java.util.Random;

public class RandomArmstrong {
    public static void  main(String[] args)
    {
        Random rand = new Random();
        int num = rand.nextInt(100000), org, r, res = 0;
        org = num;
        while (org != 0)
        {
            r = org % 10;
            res += Math.pow(r, 3);
            org /= 10;
        }

        if(res == num)
            System.out.println(num + " is an Armstrong number.");
        else
            System.out.println(num + " is not an Armstrong number.");
    }
}
