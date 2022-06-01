@isTest
public class CalculatorTest {
    @isTest
    //Test methods have to be static all the time.
    //Test methods can be public or private. It does not matter.
    private static void testMessages(){
        //Just call the method like anonymous.
        Calculator.welcomeMessage();
        Calculator.printNewMessage('Message m test class // First Test annotation // ');
    }
    @isTest
    private static void TestMessage2() {
        Calculator.printNewMessage2('test msg', date.today());
    }
    @isTest
    private static void addTest(){
        integer i =10;
        integer j=15;
        integer calAdd = Calculator.add(i, j);
        system.assertEquals(25, calAdd);
    }
    @isTest 
    private static void addTest2() {
        integer calcAdd = Calculator.add(10,15, 20);
        system.assertEquals(45, calcAdd);
    }
    @isTest
    private static void addTest3(){
        List<integer> listInt = new List<integer>{15,15,15};
        integer calcAdd = Calculator.add(listInt);
        system.assertEquals(45, calcAdd);

    }
}
