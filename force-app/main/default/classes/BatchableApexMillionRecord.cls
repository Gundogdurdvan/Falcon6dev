public with sharing class BatchableApexMillionRecord implements Database.Batchable<SObject>,database.stateful{
    public static integer batchTimes= 0;
    public static integer totalBatch = 0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        List<Account> test = [select id,name from account];
        database.QueryLocator p = database.getQueryLocator([select id,name from account]);
        system.debug(test.size());
        return p;
    }
    public void execute(Database.BatchableContext BC, List<Account> p  ){
        batchTimes+=1;
        system.debug('This batch executed '+batchTimes +' times');
    }

    public void finish(Database.BatchableContext BC){
    totalBatch+=1;    
    system.debug('This Batch worked '+totalBatch +' times');
    }
}