string jsonAccountString = '{"Name":"JsonToApex","Type":"Prospect","AnnualRevenue":50}';
object ob = JSON.deserialize(jsonAccountString, Account.class);
Account acc = (Account)ob;
insert acc;

string jsonAccountString2 ='[{"Name":"HERO","Type":"Prospect","AnnualRevenue:50"},{"Name":"Json To Apex HERO","Type":"Prospect","AnnualRevenue":5099999999999}]';
object ob1 = JSON.deserialize(jsonAccountString2, list<account>.class);
list<account> listacc = (list<account>)ob1;
insert listacc;
system.debug('Test');