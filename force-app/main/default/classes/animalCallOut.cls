public with sharing class animalCallOut {

    private static string GET_ANIMALS_ENDPOINT = calloutInfo__mdt.getInstance('GET_ANIMALS').Endpoint__C;
    private static string POST_ANIMALS_ENDPOINT = calloutInfo__mdt.getInstance('POST_ANIMALS').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_Post = 'POST';
    private static string ilkurun =product__mdt.getInstance('ilkUrun').ProductName__c;
    private static decimal productID = product__mdt.getInstance('ilkUrun').Product_ID__c;
    private static Object tcknumber = plane__mdt.getInstance('Pegasus');
    public static void name() {
        System.debug(ilkurun+' '+productID);
        System.debug('ticket number ==>'+ tcknumber);
    }

    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint(GET_ANIMALS_ENDPOINT);
        Request.setMethod(HTTP_GET);
     

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
    Request.setEndpoint(GET_ANIMALS_ENDPOINT);
    Request.setMethod(HTTP_GET);
 

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
        string result ='Failed';
        System.debug('Something went wrong people');
        //Test deneme 12123;
        
    }
    return response;
}
    public static HttpResponse postAnimals(){
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setHeader('Content-Type', 'application/json');
        request.setBody('{"name":"Fluffykins"}');
        request.setMethod(HTTP_Post);


        Http Http = new Http();

        HttpResponse response = Http.send(request);
        System.debug(response.getStatusCode());
        if (response.getStatusCode()==201) {
            AnimalsCalloutResponse animalsResponse = (AnimalsCalloutResponse)Json.deserialize(response.getBody(), animalsCalloutResponse.class);

            System.debug('Animal list start');
            list<string> animals = animalsResponse.animals;
            for (string a : animals) {
                System.debug(a);
            }
        }else {
            System.debug('Something went wrong');
        }
        return response;


    }

}