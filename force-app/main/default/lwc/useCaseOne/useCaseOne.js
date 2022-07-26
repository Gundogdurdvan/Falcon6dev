import { LightningElement } from 'lwc';

export default class UseCaseOne extends LightningElement {
    userName;
    role;

    
    changeHandler(Event){
        if(Event.target.name=="username"){
            this.userName = Event.target.value;
        }else{
            this.role = Event.target.value;        
        }
    }

   

    get options() {
        return [
            { label: 'Salesforce Admin', value: 'Salesforce Admin' },
            { label: 'Salesforce Developer', value: 'Salesforce Developer' },
            { label: 'Salesforce Architect', value: 'Salesforce Architect' },
        ];
    }


}