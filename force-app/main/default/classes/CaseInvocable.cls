public with sharing class CaseInvocable {
    @invocableMethod(label ='Send Email & Save as Activity'
    description='Sends an email and saves the same as an activity'
    category='Case')
    public static void sendEmail(list<FlowInput> inputs){
        FlowInput input = inputs[0];
        list<Messaging.SingleEmailMessage> msgs = new list<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactid);
        msg.setSubject('Case created '+input.caseNumber);
        msg.setPlainTextBody('Hello there, \n A case has been created for you to answer your query. '
                              +'One of our customer representative is going to reachout to you. Stay tuned! '
                               +'\n Thank you!');
        msgs.add(msg);                       
        Messaging.sendEmail(msgs);                        
    }

    public class FlowInput {
        @invocablevariable(label= 'Case Number' description = 'To get Case Number' required =true)
        public string caseNumber; 
        @invocablevariable(label= 'Contact id' description = 'To get Contact Id' required =true)
        public id contactid;

    }





    /*Account name, list<contactName> & list<opportunityName>
    public class DataClass{
        public string accName;
        public list<string> conNames;
        public list<string> oppNames;
    }*/
}
