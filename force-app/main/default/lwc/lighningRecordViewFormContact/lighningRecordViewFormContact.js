import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import NAME_FIELD from '@salesforce/schema/Contact.Name'
import TITLE_FIELD from '@salesforce/schema/Contact.Title'
import ACCOUNTID from '@salesforce/schema/Contact.AccountId'
import PHONE_FIELD from '@salesforce/schema/Contact.Phone'
import EMAIL_FIELD from '@salesforce/schema/Contact.Email'
import MOBILE_PHONE_FIELD from '@salesforce/schema/Contact.MobilePhone'
import CONTACT_OWNER_FIELD from '@salesforce/schema/Contact.OwnerId'

export default class LighningRecordViewFormContact extends LightningElement {
    recordId="0038c00002iIjseAAC";
    objectName= CONTACT_OBJECT;
    nameField=NAME_FIELD;
    titleField=TITLE_FIELD;
    accountIDField = ACCOUNTID;
    emailField = EMAIL_FIELD;
    phoneField = PHONE_FIELD;
    mobilePhoneField = MOBILE_PHONE_FIELD;
    contactOwnerField= CONTACT_OWNER_FIELD;

}