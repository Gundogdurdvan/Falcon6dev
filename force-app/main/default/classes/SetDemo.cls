public class SetDemo {

    public integer c=15;
    public static set<integer> setFromList(List<Integer> intList){
    Set<integer> intSet = new Set<integer>();
    intSet.addAll(intList);
    return intSet;
}   
    public static set<string> capitalizeSet(set<string> setString) {
        Set<string> upperCaseSet = new Set<string>();
        for (string eachString : setString) {
            string tempStr =eachString.toUpperCase();
            upperCaseSet.add(tempStr);
        }
        

        return upperCaseSet;
    }
}