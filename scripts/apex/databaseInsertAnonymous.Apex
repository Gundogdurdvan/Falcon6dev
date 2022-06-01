Account acc1 = new account();
acc1.name = 'Ridvanaa Test';
acc1.industry = 'Energy';
acc1.active__c = 'No';

Account acc2 = new account();
acc2.name = 'UI Test';
acc2.industry = 'Energy';
acc2.active__c = 'Yes';

Account acc12x = new account();
Account acc12y = new account();
Account acc12z = new account();

list<account> ListAcc = new list<account>{acc1,acc2,acc12x,acc12y,acc12z};

insert listacc;

list<database.SaveResult> results = database.insert(listAcc, false);  //database.insert return type is database.SaveResult

//Iterate SaveResult array

for (database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        system.debug('Account Succesfully inserted, Account Id: '+eachResult.getId());
    }
    else{
        system.debug('Errors : '+ eachResult.getErrors());
    }
}
