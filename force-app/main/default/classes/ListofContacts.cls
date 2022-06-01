public class ListofContacts {
    public static void contactList_Soql(string myFilter) {
        
       list<Account> listAcc = [select id, Name, phone from Account where name =:myFilter ORDER BY name DESC];
        System.debug(listAcc);

       for (account eachAcc : listAcc) {
        string accPhone = eachAcc.Phone;
        string accName = eachAcc.Name;
        System.debug(accName+' '+accPhone+' '+eachAcc.Id);
       }
    }
}
