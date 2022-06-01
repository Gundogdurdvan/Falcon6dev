try{
    account a = new account();
    insert a;
}catch (DmlException dex){
    system.debug('DML went wrong buddy.');
}catch (exception ex){
    system.debug('something went wrong buddy');
}

system.debug('Apex is SIMPLE');




try{
list<account> accList = new list<account>();
Account acc = new account();
for(integer i=0 ; i<100000 ; i++){
    acc.name = ' '+i;
    acclist.add(acc);
}

insert accList;

}catch(Exception ex){
    system.debug('DML boundary exceed');
}