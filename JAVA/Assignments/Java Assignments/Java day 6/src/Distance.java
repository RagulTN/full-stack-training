class Dist {
    int feet;
    int inch;

    Dist(int f, int i) {
        feet = f;
        inch = i;
        System.out.println("Constructor");
    }
    void disp() {
        System.out.println("Feet: " + feet);
        System.out.println("Inch: " + inch);
    }

    Dist(Dist clone) {
        feet = clone.feet;
        inch = clone.inch;
        System.out.println("Clone Constructor");
    }
}


