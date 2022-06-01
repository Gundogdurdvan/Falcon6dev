trigger AccountTrigger3 on Account (before insert, after insert,before update , after update) {

    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforAllContacts(trigger.new, trigger.old , trigger.Newmap , trigger.Oldmap);
    }
//     System.debug('Before insert trigger called');
//     system.debug('Before update trigger called');
//     System.debug('trigger.isBefore '+trigger.isBefore);
//     System.debug('trigger.isAfter '+trigger.isAfter);
//     System.debug('trigger.isInsert '+trigger.isInsert);
//     System.debug('trigger.isUpdate '+trigger.isUpdate);

//     if(trigger.isInsert && trigger.isBefore){
//     System.debug('Before insert trigger fired');    
// }

//     if(trigger.isInsert && trigger.isAfter){
//     System.debug('after insert trigger fired');    
// }
//     System.debug('------------------------------------------');

//     if (trigger.isAfter) {
//         System.debug('trigger.new after insert/update = '+trigger.new);
//     }
        // List<Account> newAccounts = trigger.new;
        // if(trigger.isAfter){
        //     System.debug('all new accounts- '+newAccounts);
        // }
        
        // if(trigger.isAfter && trigger.isInsert){
        //     list<account> newAccounts = trigger.new;

        //     System.debug('Total account inserted = '+ newAccounts.size());

        //     for (account acc : newAccounts) {
        //         System.debug('Account id is = '+ acc.id + 'account name is '+ acc.name);
        //     }
        // }

        // if (trigger.isBefore && trigger.isInsert) {
        //     System.debug('Trigger.old before insert = '+trigger.old);
        // }
        // if (trigger.isAfter && trigger.isInsert) {
        //     System.debug('Trigger.old after insert = '+trigger.old);
        // }

        // if (trigger.isAfter) {
        //     if (trigger.isUpdate) {
        //         for (Account oldAcc : trigger.old) {
        //             System.debug('Old acc id= '+oldAcc.id)
        //         }
        //     }

            
        // }

        // if (trigger.isAfter && trigger.isUpdate) {
        //     Map<Id,Account> newAccMap = trigger.newMap;
        //     Map<Id,Account> oldAccMap = trigger.oldMap;
        //     set<id> setOfAccIds = newAccMap.keySet();
        //     integer countWebsiteUpdate = 0;
        //     for (ID eachId : setOfAccIds) {
        //         account oldAcc = oldAccMap.get(eachId);
        //         string oldWebsite = oldAcc.Website;
        //         account newAcc = newAccMap.get(eachId);
        //         string newWebsite = newAcc.Website;
        //         if (oldWebsite !=newWebsite) {
        //             System.debug('For account '+ newAcc.NAme+ ', new Website is '+ newAcc.Website);
        //             countWebsiteUpdate++;
        //         }
        //         System.debug('# of account website updated = '+countWebsiteUpdate);
        //     }
        // }

        // if (trigger.isBefore) {
        //     for (account eachAcc : trigger.new) {
        //         if (trigger.isInsert && eachAcc.active__c =='Yes') {
        //             eachAcc.Description = 'Account is now active. Enjoy!';
        //         }
        //         if (trigger.isUpdate && trigger.oldMap.get(eachAcc.Id).active__c !='Yes' && eachAcc.Active__c=='Yes') {
        //             eachAcc.Description = 'Account is now active. Enjoy!';
        //             System.debug(eachacc.active__c );
        //         }
        //     } 
        
        // }

            // if (trigger.isUpdate) {
            //     id old = trigger.oldMap.keySet();
                
            // }
          
        }
    
    
