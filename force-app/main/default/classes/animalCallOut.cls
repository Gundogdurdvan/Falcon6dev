public with sharing class animalCallOut {
    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        Request.setMethod('GET');

        //2. prepare http
        http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        System.debug('status '+response.getStatus());
        System.debug('status Code'+response.getStatusCode());
        //4. procces the response 
        if (response.getStatusCode()== 200) {
            string animalsJSON = response.getBody();
            System.debug(animalsJSON);
        }else {
            //NOT SUCCES,,
            System.debug('Something went wrong people');
        }

    }
}
