public with sharing class animalCallOut {
    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
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

            object ob = JSON.deserializeUntyped(animalsJSON);
            map<string, object> result = (map<string, object>)ob;
            list<object> animals = (list<object>) result.get('animals');
            System.debug('==========Object animals start========');
            for (object a : animals) {
                system.debug(a);
            }

            System.debug(('==========Object animals END========'));
        }else {
            //NOT SUCCES,,
            System.debug('Something went wrong people');
            //Test deneme 12123;
            
        }

    }


//type cast = data type ==> object ;


public static HttpResponse fetchAnimals2() {
    //1. prepare request
    HttpRequest Request = new HttpRequest();
    Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    Request.setMethod('GET');
 

    //2. prepare http
    http https = new http();

    //3. send request, receive response
    HttpResponse response = https.send(request);
    System.debug('status '+response.getStatus());
    System.debug('status Code'+response.getStatusCode());
    //4. procces the response 
    if (response.getStatusCode()== 200) {
        AnimalsCalloutResponse animalResponse = (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), animalsCalloutResponse.class);
        list<string> animalList = animalResponse.animals;
        for (string a : animalList) {
            System.debug(a);
        }
    }else {
        //NOT SUCCES,,
        System.debug('Something went wrong people');
        //Test deneme 12123;
        
    }
    return response;
}

}