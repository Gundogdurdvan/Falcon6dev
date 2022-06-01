@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void setupData(){
        account acc1= new account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';

        account acc2= new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        account acc3= new account();
        acc3.name = 'PT Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account> {acc1,acc2,acc3};
        insert listAcc;

        List<Contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cnt = new contact();
            cnt.lastName = 'Test SOQL';
            if(i<100)
            cnt.AccountId = acc1.id;
            else if(i<200)
            cnt.AccountId = acc2.id;
            else if(i<300)
            cnt.AccountId = acc3.id;
            listContact.add(cnt);
        }
        insert listContact;
    }
    @istest
    private static void testMethod1() {  
        test.startTest();
        SoqlDemo2.childToParent_Soql1();
        test.stopTest();
    }
    @istest 
    private static void sampleSoql4Test() {
        list<account> listAccounts = [select id,name, type from Account];
        for (account acc : listAccounts) {
            acc.Type = 'Customer - Direct';
        }   
        update listAccounts;

        List<Opportunity> createOpps = new List<Opportunity>();
        for(integer i =0;i<300;i++){
        Opportunity o = new Opportunity();
        o.name ='opp1';
        o.StageName = 'Closed Lost';
        o.CloseDate = date.today();
        if(i<100){
            o.AccountId = listAccounts[0].id;
        }
        else if(i<200){
            o.AccountId = listAccounts[1].id;
        }
        else if(i<300){
            o.AccountId = listAccounts[2].id;
        }
        createOpps.add(o);
    }
    insert createopps;
    test.startTest();
    SoqlDemo2.sampleSoql4();
    test.stopTest();
    }
   

}
