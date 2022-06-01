trigger LeadTrigger on Lead (before insert, after insert) {
    if (trigger.isAfter) {
        for (lead eachLead : trigger.new) {
            System.debug(eachLead.name);
        }
    }
}