list<case> listCase = new list<case>();
for (Integer i = 0; i <205; i++) {
    case c =new case();
    c.subject = 'There is a bug';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;

List<Case> updateCases = [select id, subject, status from case where status ='New'];
for (case eachCase : updateCases) {
    eachCase.Status = 'Working';
}

update updateCases;