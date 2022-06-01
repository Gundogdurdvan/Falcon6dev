public class AccountManager {
    public static void updateDescriptionFields(list<string> newList) {
        List<Account> accList = [select id,name, CreatedDate,Description from account where name = :newList];
        list<account> updatedList = new list<account>();
       for (account eachAcc : accList) {
           eachAcc.Description = eachAcc.name +' '+eachAcc.CreatedDate;
           updatedList.add(eachAcc); 
       }
       update updatedList;
       System.debug(updatedList);
}
}