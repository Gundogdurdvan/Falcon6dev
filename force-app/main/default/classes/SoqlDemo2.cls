public class SoqlDemo2 {
    public static void childToParent_Soql1() {
        //querying contact records.
        List<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.Account.Name;
            system.debug('contact name is ' + eachContact.name + ' its acc is ' + accName);
        }
    }

    public static void sampleSoql4() {
        list<account> accountWithOpplist =[select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        //list<account>
            //--> list<oppotunities>
        for (account eachAcc : accountWithOpplist) {
            system.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;
            for (Opportunity opp : eachAccOpps) {
                system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------');
        }
    }
}













// public class SoqlDemo2 {
//   public static void sampleSoql4() {
//       list<account> accountWithOppList = new list<account>();
//       accountWithOppList = [select name, AnnualRevenue, (select name, Amount from opportunities where stagename = 'Closed Won') from Account where type = 'Customer - Direct'];

//       for (account acc : accountWithOppList) {
//           System.debug(('Account name '+acc.Name+ 'and its annual revenue is '+ acc.AnnualRevenue));
//           for (opportunity opp : acc.Opportunities) {
//               System.debug('Opportunity Name -->'+opp.Name);
//               System.debug('Opportunity Amount -->'+opp.Amount);
//           }
//       }
//   }
// }
