public class LoopDemo {
   public void print_int_while(){
        integer count =1;
        while (count<=25) {
            System.debug(count);
            count++;
        }
   }
   public void print_N_numbers(integer n){
       for(integer i=0; i<n; i++){
           System.debug(i);
       }
   }
   public void print_N_numbers_2(integer n){
       string s='';
    for(integer i=0; i<n; i++){
        s+=string.valueOf(i)+',';        
    }    
    system.debug(s);
    }
    
   public void print_sum_N_numbers(integer n){
       integer sum=0;
       for(integer i=1; i<=n; i++){
           sum+=i;
       }
       System.debug(sum);
   } 


}
