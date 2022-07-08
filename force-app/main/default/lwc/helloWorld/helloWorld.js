import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefined
    fullname ="Salesforce Developer "//String
    age = 30;
    location ={
        city: "Houston",
        country:"United States",
        postalCode: "50033"
    };
    fruits =["Banana","Orange","Pomogranite","Pineapple"]; //array
}
