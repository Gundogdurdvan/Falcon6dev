public with sharing class animalCallOut {
    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://practicecom-bc-dev-ed.my.salesforce.com/one/one.app#/alohaRedirect/0rp8b0000004yhH?isdtp=p1');
        Request.setMethod('GET');
     

        //2. prepare http
        http https = new http();

        //3. send request, receive response
        HttpResponse response = https.send(request);
        System.debug('status '+response.getStatus());
        System.debug('status Code'+response.getStatusCode());
        //4. procces the response 
        if (response.getStatusCode()== 200) {
            string animalsJSON = response.getBody();
            string test = string.valueOf(response);
            System.debug(test);
        }else {
            //NOT SUCCES,,
            System.debug('Something went wrong people');
            //Test deneme 12123;
            
        }

    }
}
