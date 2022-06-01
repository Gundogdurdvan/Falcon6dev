map<string, email_domain__mdt> allDomains = email_domain__mdt.getAll();




for(string eachDomains : allDomains.keySet() ){
    system.debug(allDomains.get(eachDomains));
}