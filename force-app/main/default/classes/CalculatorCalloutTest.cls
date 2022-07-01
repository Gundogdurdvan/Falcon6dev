@isTest
public with sharing class CalculatorCalloutTest {
    @isTest
    private static void doAddTest(){
        //prepare data
        //1.Set Mock
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMockAdd());

        //Start Test
        Test.startTest();
        double d1 = CalculatorCallout.addition(1, 2);
        Test.stopTest();
            //Call add method
        //Stop Test
        system.assertEquals(3, d1);
        //Assert    
    }
}
