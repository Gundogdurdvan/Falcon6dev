public with sharing class GetOppSumforRelatedAcc {

    public static decimal GetOppSumforRelatedAcc() {
        account acc = [SELECT id,name
                  FROM Account
                  WHERE name like '%Nev%'
                  ORDER BY name DESC
                  LIMIT 1];
        List<Opportunity> listOpp = [SELECT id, amount
                                     FROM Opportunity
                                    WHERE AccountId = :acc.id];        
        decimal totalAmount = 0;                              
        for (opportunity eachOpp : listOpp) {
            totalAmount += eachOpp.Amount;
        }      
        return totalAmount;                      
    }
}
