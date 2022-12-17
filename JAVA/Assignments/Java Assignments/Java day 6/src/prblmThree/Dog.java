package prblmThree;

public class Dog {
      public void get_Details()
      {
          System.out.println("This is public class ");
          Dog1 dog1=new Dog1();
          dog1.get_Details1();

          Dog2 dog2=new Dog2();
          dog2.get_Details2();
      }
     private class Dog1
     {
         public void get_Details1()
         {
            System.out.println("This is Private Class ");
         }
     }
     protected class Dog2
     {
         public void get_Details2()
         {
            System.out.println("This is Protected Class ");
         }
     }
}

