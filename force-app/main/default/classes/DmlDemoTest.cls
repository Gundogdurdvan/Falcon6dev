@isTest
public  class DmlDemoTest {
    @istest
    private static void DmlDemoTest1() {
        DmlDemo.dmlinsertDemo_stndObj();
        list<account> listAcc = [select id,name from account where name ='SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].name);
    }

    @isTEst

    private static void dmlUpdateDemo() {
        Account acc = new Account();
        acc.Name =  'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlUpdateDemo_2();
        list<contact> listCnt = [select id,lastname from contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].lastname);
    }
}
