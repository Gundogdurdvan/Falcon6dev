import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetAccountObjInfo extends LightningElement {
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    accountInfoHandler(resulta){
        console.log(resulta);
    }
}


