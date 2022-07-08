import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
fullname = "Rido";
title = "SF Dev";

handleChange(event){
    this.title = event.target.value;
    
}
}

