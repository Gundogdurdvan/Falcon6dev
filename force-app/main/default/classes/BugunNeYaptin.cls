public with sharing class BugunNeYaptin implements Schedulable{
    public void execute(SchedulableContext SC) {
        messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject('Bugun Allah Icin Ne Yaptin');
        email.setHtmlBody('<h1>Ey insan bugun Allah icin ne yaptin</h1><img src="https://live.staticflickr.com/3186/2604773538_8b1ac35171_c.jpg"><p><h5>Bu mesaj apex tarafindan schedule edilmistir.</h5></p>');
        email.setToAddresses(new list<string>{'sumeyyesozatmaz50@gmail.com','gundogdurdvan@gmail.com','gozdeciftci04@gmail.com'});
        email.setSenderDisplayName('Ak Sakalli Dede');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
   }
}
