public with sharing class AccountInvocable {
    @invocableMethod(label = 'Delete closed Opps'
    description ='Delete all the closed opportunities when an account goes inactive or hold'
    category = 'Account')
    public static void deleteOpportunities(list<id> accountIds){
        List<Opportunity> opps = [SELECT Id
                                FROM Opportunity
                                WHERE AccountId IN :accountIds
                                AND StageName IN('Closed Won', 'Closed Lost')];
        if(!opps.isEmpty()){                        
        delete opps;
        }
      
   }
}
 