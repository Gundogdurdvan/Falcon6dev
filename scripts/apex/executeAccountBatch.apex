list<account> accs = [select id,name from account];
AccountsQueueableExample qa = new AccountsQueueableExample(accs);
id jobid = system.enqueueJob(qa);
system.debug('job id is '+jobid);