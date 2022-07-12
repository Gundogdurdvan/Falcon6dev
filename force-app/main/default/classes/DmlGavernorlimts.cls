public with sharing class DmlGavernorlimts {
    public static void DmlGavernorlimits() {
        list<account> acc = [Select id from account LIMIT 150];
    }
}
