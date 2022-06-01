public class SoqlDemo {
   public static void accountSoql_1(){
    List<Account> listAcc = [select id, Name From Account WHERE name like '%A%'];
    System.debug('account list = '+listAcc);
    System.debug('list size = '+listAcc.size());

    Account acc =[select id, name from Account ORDER BY CreatedDate desc limit 1];
    System.debug('latest account created is '+acc);
   }

   public static void accountSOQL_2(){
       Account acc= [select id, name, Phone, AccountNumber from account Order By CreatedDate limit 1];
       System.debug('latest account is created '+acc);

       String accName = acc.name;
       string accPhone= acc.phone;
       System.debug('accName = '+ accName + ', phone is '+accPhone);
       System.debug('account number is '+acc.AccountNumber);
       id acc1= acc.Id;
       System.debug(acc1);

   }

   public static void accountSOQL_3(){
       List<Account> listAcc = [select id, name, phone, AccountNumber from Account order by createdDate desc];
       System.debug('all accounts'+ listAcc);

       for (account eachAccount : listAcc) {
           string accName= eachAccount.Name;
           string accPhone= eachAccount.Phone;
           System.debug('accName = '+ accName + ', phone is '+accPhone);
           System.debug('account number is '+eachAccount.AccountNumber);
       }
   }

   public static void accountSOQL_4(){
       list<contact> listcontact = [select id,name,phone from contact ORDER BY name DESC];

       for (contact eachContact : listcontact) {
           String contactName = eachContact.Name;
           String contactPhone = eachContact.Phone;

           System.debug('Contact name '+contactName+ ' has '+contactPhone +' contact number');

       }
   }
   public static void accountSOQL_Filter(){
       string accNamefilter = 'sForce';
       List<Account> listAcc= [select id, name from Account where name = :accNamefilter];
       System.debug(listAcc);
   }

   public static void AccountSOQL_Filter(string accNameFilter) {
       List<Account> listAcc = [select id, name from account where name = :accNameFilter];
       System.debug(listAcc);
       
   }

   public static void childToParent_Soql1(){
       list<contact> listCnt = [select id, name, account.name from contact where account.industry ='Energy'];

       for (contact eachContact : listCnt) {
           string accName = eachContact.Account.name;
           System.debug('contact name is '+ eachContact.name + 'its acc is '+accName);
       }
   }
}
