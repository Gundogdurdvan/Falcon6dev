import { LightningElement } from 'lwc';

export default class CustomerTypeCombobox extends LightningElement {
    selectedType;

    changeHandler(event){
        this.selectedType = event.target.value;
    }

    get customerTypes(){
        return[
            {label:"Existing Customer",value:"Existing Customer"},
            {label:"New Customer - Marketing",value:"New Customer - Marketing"},
            {label:"New Customer - Referral",value:"New Customer - Referral"},
        ];

    }
}