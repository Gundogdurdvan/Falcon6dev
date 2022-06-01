public class primitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new Date instance');
        Date newDate = Date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(1995, 2, 17);
        Date todayDate = date.today();
       

        system.debug('new date: '+newDate);
        system.debug('new date 2: '+newDate2);
        system.debug('today date: '+ todayDate);
    }
    public void printMewTime(){
        time newTime = Time.newInstance(18,20,2,30);
        time meTime = Time.newInstance(15,15,2,20);
       system.debug('my Time: '+ newTime);
       system.debug('me Time; '+ meTime);
    }
    public void printNewDateTime(){
        
        //today's date.
        date newDate = date.today();
        
        //new time
        time newTime = time.newInstance(9,8,0,0);
        time tryTime = time.newInstance(23,23,23,23);
        
        //1. create new datetime from DATE and TIME
        datetime dt1 = datetime.newinstance(newDate,newTime);
        system.debug('dt is '+dt1);
        
        //2.create datetime using YEAR, MONTH, DAY. => Time will be midnight (0000).
        datetime dt2=datetime.newInstance(2025,1,9);
        system.debug('dt 2 is '+dt2);
        //3. create datetime using YEAR, MONTH, DAY HOUR, MINUTE, SECOND.
        Datetime dt3 = Datetime.newInstance(2021,10,9,10,10,10);
        system.debug('dt 3 is '+dt3);
        //4. Current datetime???
        datetime currentDT=datetime.now();
        system.debug('current DT: '+currentDT);

        //5. create Gmt time
        Datetime dt5 = Datetime.newInstanceGMT(1998,1,28,18,0,0);
        system.debug('dt5: '+dt5);
        //6. Current time
        Datetime dt6 = datetime.now();
        system.debug('dt6: '+dt6);

        //6. Long time.
        Datetime dt6_1 = Datetime.newinstance(0);
        system.debug('dt 6_1: '+ dt6_1 );
        long longtime = 1234567891254785L;
        Datetime dt7 = datetime.newinstance(longtime);
        system.debug('dt 7: '+ dt7);
       
        long currentLongTime = currentDT.getTime();

        System.debug('Current Long Time: '+ currentLongTime);
    }
    
}
