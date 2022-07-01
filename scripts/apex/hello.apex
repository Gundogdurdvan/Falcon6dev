// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
BatchableApexMillionRecord a = new BatchableApexMillionRecord();

id jobid= Database.executeBatch(a,200);
system.debug(jobid);

set<string> Keys = new set<string>();
keys.add('T%');
keys.add('A%');
list<account> acc = [select id,name from account WHERE name like :keys];
system.debug(acc.size());
delete acc;

System.debug(GetOppSumforRelatedAcc.GetOppSumforRelatedAcc());