public class datetimeMethodsDemo {
    public void calculateAgeInMonnths(){
        System.debug('calculate age in months.');
        //birth day 
        Date birthDay = date.newinstance(1996,7,30);
         //todays date
        date todaydate = date.today();
        // calculate month diffeerence in between two dates.
        integer ageInMonths = birthDay.monthsBetween(todaydate);
        System.debug('age in months: '+ageInMonths);

     
    }
    public void calculateAgeInDays(){
         //birth day 
        Date birthDay = date.newinstance(1996,7,30);
         //todays date
        date todaydate = date.today();
                    
        integer ageInDays = birthDay.daysBetween(todaydate);
        System.debug('age in days: '+ageInDays);    
    }
    
    public void printSubscriptionEndDate(){

        //3.1 susbcription is done for 100days.
        date todayDate= date.today();
        integer subscriptionDuration = 1000;
        date subscriptionEndDate = todayDate.addDays(subscriptionDuration); 
        System.debug('Subscription end date: '+ subscriptionEndDate );
        //3.1.1 print year and month of end date.
        Integer endDateYear = subscriptionEndDate.year();
        System.debug('subscription end date year is: '+endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        System.debug('subscription end date month is: '+endDateMonth);

    }

    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        System.debug('Offer will end on: '+ dtOfferEnd);

        date offerEndDate = dtOfferEnd.date();
        System.debug('offer end date is: '+offerEndDate);

    }
}

