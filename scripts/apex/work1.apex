work1 obj = new Work1();

list<integer> myEmptyList = new list<integer>();
list<integer> myList = new list<integer>();
myList.add(10);
myList.add(10);
myList.add(5);



// System.debug(obj.sumOfList(myEmptyList));

list<integer> listem = new list<integer>();

listem = obj.doubleOfList(myList);

// System.debug(listem);

System.debug(obj.doubleOfList(obj.doubleOfList(listem)));



