@isTest
public class AccountQueueableExampleTest {
    @TestSetup
    static void setup(){
        list<account> accounts = new list<account>();
        for (Integer i = 0; i < 100; i++) {            
            accounts.add(new account(name= 'Test Account'+i));            
        }
        insert accounts;
    }
   @IsTest
   static void methodName(){
        List<Account> accs = [select id,name from account];   

       Test.startTest();
        AccountsQueueableExample aq = new AccountsQueueableExample(accs);
        system.enqueueJob(aq);
       Test.stopTest();
       integer count = [select COUNT() from account where name like '%SI%'];
       system.assertEquals(100, count);
       }

    
}
