public class AssignmentAgeOfPerson {
    date dateOfBirth = date.newinstance(1996,3,15);
    date todayDate = date.today();
    integer ageInDays = dateOfBirth.betweenDays(todayDate);
    integer ageInMonths = dateOfBirth.betweenMonths(todayDate);
    integer ageInYears = dateOfBirth.betweenDays(todayDate);
}
