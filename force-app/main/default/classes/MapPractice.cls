public class MapPractice {
  
   public static void mapTest() {
    Map<Id, account> mapTest = new Map<id, account>();
    // mapTest.put('numara1', 2);
    // mapTest.put('numara2', 5);
    // mapTest.put('numara3', 6);
    // mapTest.put('numara4', 7);
    // list<string> testList = new list<string>(mapTest.keySet());
    // System.debug(testList);

    list<account> listAcc = [select id,name from account limit 11];
    mapTest.putAll(listAcc);
    System.debug(mapTest);
   }
}
