import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name'
import TYPE_FIELD from '@salesforce/schema/Account.Type'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'
import PHONE_FIELD from '@salesforce/schema/Account.Phone'
import RATING_FIELD from '@salesforce/schema/Account.Rating'

export default class LightningRecordViewFormAccount extends LightningElement {
    recordId="0018c00002Eub76AAB";
    objectName= ACCOUNT_OBJECT;
    nameField=NAME_FIELD;
    typeField=TYPE_FIELD;
    industryField = INDUSTRY_FIELD;
    annualRevenue = ANNUALREVENUE_FIELD;
    phoneField = PHONE_FIELD;
    ratingField = RATING_FIELD;

}