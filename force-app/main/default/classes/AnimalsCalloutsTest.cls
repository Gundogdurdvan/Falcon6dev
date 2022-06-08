@istest
public with sharing class AnimalsCalloutsTest {
    @istest
    private static void testFetchAnimalsSucces(){
        AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
        test.setmock(HttpCalloutMock.class,am);
        test.startTest();
        HttpResponse response = animalCallOut.fetchAnimals2();
        test.StopTest();
        system.assertEquals(200, response.getStatusCode());
    }
}
