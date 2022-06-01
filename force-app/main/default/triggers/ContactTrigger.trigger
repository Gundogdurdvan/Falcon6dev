trigger ContactTrigger on Contact   (before insert, before update , after insert, after update, after delete , after undelete) {

    set<id> accountIDS = new set<id>();












    // if (trigger.isBefore && trigger.isUpdate) {
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(trigger.new, trigger.old, trigger.newMap, trigger.oldmap);
    // }

    
    // if (trigger.isBefore) {
    //     System.debug('We are in BEFORE trigger');
    //     if (trigger.isInsert) {
    //         System.debug('Before insert trigger called');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('Update insert trigger called');
    //     }
    // }

    // if (trigger.isafter) {
    //     System.debug('We are in AFTER trigger');
    //     if (trigger.isInsert) {
    //         System.debug('Before insert trigger called');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('Update insert trigger called');
    //     }
    // // }
    //     if (trigger.isUpdate && trigger.isBefore) {
    //         System.debug('Contacts record are being updated and you are getting this meesage from a debug in contactTrigger.');
            
    //     }

}