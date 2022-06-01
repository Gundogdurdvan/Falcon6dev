public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';
        // integer lenghtOfStr= sessionDescription.length();
        // system.debug('length of string is = '+lenghtOfStr);
        sessionDescription = sessionDescription.toUpperCase();
        system.debug(sessionDescription);
        Boolean containsApex= sessionDescription.contains('apex');
        system.debug('has apex? '+containsApex);
        Boolean containsSalesforce= sessionDescription.contains('salesforce');
        system.debug('has salesforce???? '+containsSalesforce);

        //4.
        string apexx ='apex';
        Boolean AppCheck = apexx.equals('apex');

        
    
    }
    
}
