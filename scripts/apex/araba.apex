Araba yeniObje = new Araba();
yeniObje.sumeyye();


list<account> listAllAcc = [select id,name,website from account];
for (account eachAcc : listAllAcc) {
    eachAcc.Website = null;
   
}

update listAllAcc;


system.debug('I love u ');