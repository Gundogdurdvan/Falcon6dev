public class MapDemo {
    public static String retrieveMonth(integer m){
        string monthName = '';
        Map<integer, string> months = new Map<integer, string>();
        months.put(1,'January');
        months.put(2,'February' );
        months.put(3,'March' );
        months.put(4,'April' );
        months.put(5,'May' );
        months.put(6, 'June');
        months.put(7, 'July');
        months.put(8, 'August');
        months.put(9, 'September');
        months.put(10, 'October');
        months.put(11, 'November');
        months.put(12, 'December');
       

        Boolean keyExist = months.containsKey(m);
        if (keyExist) {
            monthName = months.get(m);
        }else {
            monthName= 'No month exist.';
        }

        return monthName;
    }
}
