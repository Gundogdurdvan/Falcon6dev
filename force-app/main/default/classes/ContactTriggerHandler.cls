public class ContactTriggerHandler {
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource != eachContact.LeadSource){
                    eachContact.LeadSource.addError('CANNOT UPDATE LEAD SOURCE. Please user!');
                }
            }
    }

    public static void contactUpdateValidation1(List<Contact> cntTriggerNew,List<Contact> cntTriggerOld, map<Id,Contact> cntTriggerNewMap,map<Id,Contact> cntTriggerOldMap) {
        for (contact eachContact : cntTriggerNew) {
            if (eachContact.LeadSource == 'Partner Referral') {
                eachContact.addError('can not update contact where lead source is partner referral ');
            }
        }
    }
}