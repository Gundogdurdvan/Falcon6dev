public class ListDemo {
    public static String candidateList(integer indx){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('candidates are '+listCandidates);
        string retrnString='';
        if (indx<listCandidates.size()) {
            retrnString = listCandidates[indx];
        }else {
            retrnString = 'Index number is no valid.';
        }
        return retrnString;
    }

    public static void randomIntegerLis () {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        integer index3value =listInteger.get(3);
        integer index3value2 = listInteger[3];
        System.debug('list of random integers = '+ listInteger);
        System.debug('value at index 3 is '+index3value2);
    }   
    

}