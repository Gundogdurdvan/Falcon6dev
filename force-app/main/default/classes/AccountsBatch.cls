public  class AccountsBatch implements Database.Batchable<sobject>, Database.stateful{
    public list <account> acc = new list<account>();
    public database.QueryLocator start(database.BatchableContext bc){
        
        database.QueryLocator ql = database.getQueryLocator([select id,name from account where annualrevenue= 3000000]);
        
        return ql;
    }
    public void execute(database.BatchableContext bc, list<account> scope) {
      for (account eachAcc  : scope) {
          eachAcc.AnnualRevenue = 4000000;
          acc.add(eachAcc);
      }
     update scope;
    }

    public void finish(database.BatchableContext bc){
        System.debug(acc.size()+ ' '+acc );
    }
}
