public class AccountHandlerInfo {
    // 123
    public static list<account> insertNewAccount(List<String> newList) {
        //Empty account list
        List<Account> accList = new List<Account>();       
               
        //Check if list is empty??
        if (!newList.isEmpty()) {

            //Add each list element as account name;
            for (string eachAccName : newList) {
                //New instance of Account
                account acc = new Account();
                acc.name = eachAccName;
                accList.add(acc);                
            }
              //Test
     
           insert accList;
        }else {
            accList= null;
            System.debug('List is empty');
        }

        return accList;
    }
}
