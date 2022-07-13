import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class LightningRecordFormContact extends LightningElement {
    recordId = "0038c00002iIjseAAC";
    objectName = CONTACT_OBJECT;

    successHandler(){
        const successEvent = new ShowToastEvent({
            title:"success",
            message: "The contact record has been saved successfully!",
            variant:"success"
        });
        this.dispatchEvent(successEvent);
    }

    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title:"Error",
            message: "An error occured while saving the contact record!",
            variant:"error"
        });
        this.dispatchEvent(errorEvent);
    }
}