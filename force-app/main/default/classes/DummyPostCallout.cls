public with sharing class DummyPostCallout {

    private static string POST_DUMMYPOST_ENDPOINT = calloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
   
    private static string HTTP_Post = 'POST';

    public static void postCallout(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_DUMMYPOST_ENDPOINT);
        request.setMethod('GET');

        Http http = new http();

        HttpResponse response = http.send(request);

        System.debug(response);
        if (response.getStatusCode()==200) {
            System.debug(response.getBody());
            DummyPostResponseWrapper dummywarapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            System.debug('Dummy wrapper '+dummywarapper);

            list<post__c> listPosts = new list<post__c>();
            list<DummyPostResponseWrapper.Cls_Post> listClsPost = dummywarapper.posts;
            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost) {
                post__c p = new post__c();
                p.id__c = dpost.id;
                p.title__c= dpost.title;
                p.body__C = dpost.body;
                p.userId__c = dpost.userId;
                p.tags__c = dpost.tags.toString();
                listPosts.add(p);
            }
            upsert listPosts id__c;
        }else {
            System.debug(response.getStatus());
        }
    }
}
