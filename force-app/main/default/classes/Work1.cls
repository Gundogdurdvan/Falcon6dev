public class Work1 {

    public integer sumOfList(list<integer> list1){
        integer sum =0;
        if(list1.size()>0){
            for (integer eachList1Element : list1) {
                sum = sum + eachList1Element;
            }
        }else {
            sum=null;
            System.debug('This is an empty list.');
        }        
        return sum;
    }
    public list<integer> doubleOfList(list<integer> list1){
        List<integer> mulList = new List<integer>();
        if(list1.size()>0){
            
            integer mul=0;
            for (integer eachList1Element : list1) {
                mul =eachList1Element*2;                
                mulList.add(mul);
              
            }
        }    
        return mulList; 
        
    }

   
}
