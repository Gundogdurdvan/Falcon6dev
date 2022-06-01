trigger AccountTrigger2 on Account (before insert, after insert) {
  if (trigger.isAfter) {
        System.debug('after insert trigger.');
       
        
    }
    if (trigger.isBefore) {
        System.debug('before insert trigger.');
    }  
}