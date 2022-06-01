public  class EmployeeInfo {
    public static string showInfo(integer empNumber){
        Map<integer, string> employeeMap = new Map<integer, string>();
        employeeMap.put(001, 'Jimmy Thakkar');  
        employeeMap.put(002, 'James Leo');
        employeeMap.put(003, 'Sumeyye Gundogdu');    
        string nameOfEmployee = '';

        if (employeeMap.size()>0) {
            nameOfEmployee = employeeMap.get(empNumber);            
        } else {
            System.debug('This is not an employee number');
        }
        return nameOfEmployee;
    }
}
