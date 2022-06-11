public with sharing class DummyPostResponseWrapper {
    public list<cls_post> posts;

    public class Cls_Post{
        public integer id;
        public string title;
        public string body;
        public integer userId;
        public list<string> tags;
    
    }
}
