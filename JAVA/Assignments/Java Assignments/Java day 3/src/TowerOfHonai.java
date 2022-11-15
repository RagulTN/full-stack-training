public class TowerOfHonai {
    public static void main(String[] args) {
        int n = 3;
        shiftDisk(n,'A', 'B', 'C');
    }

    public static void shiftDisk(int n, char TA, char TB, char TC){
        if (n==1){
            System.out.println("Disk 1 is shifted from "+TA+ " to "+ TC);
        }
        else {
            shiftDisk(n-1,TA,TC,TB);
            System.out.println("Disk "+n+" from "+TA+" is shifted to "+TC);
            shiftDisk(n-1,TB,TA,TC);
        }
    }
}