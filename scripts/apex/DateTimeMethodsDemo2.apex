DateTimeMethodsDemo2 obj = new DateTimeMethodsDemo2();

date newDate = date.today();
boolean newDateLYcheck = obj.leapYearCheck(newDate);
System.debug(newDateLYcheck);