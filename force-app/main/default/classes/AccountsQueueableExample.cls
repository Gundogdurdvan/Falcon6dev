public  class AccountsQueueableExample implements Queueable{
    public list<account> accList;
    public AccountsQueueableExample(list<account> accList) {
        this.accList = accList;
    }

    public void execute(QueueableContext context){
        for (account acc : accList) {
            acc.name = acc.Name + '-- SI ';
        }
        update accList;
    }

}
