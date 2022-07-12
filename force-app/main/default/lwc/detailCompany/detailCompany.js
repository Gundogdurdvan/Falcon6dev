import { LightningElement,track } from 'lwc';

export default class DetailCompany extends LightningElement {
   @track details = {
        name : "Jeff Bezos",
        title : "Executive Chairman",
        company : "Amazon"
     }
    handleChanges(event){
        this.details.company = event.target.value;
    } 
}

