public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    
    public void printCandidate(){
        System.debug('Candidate Name is '+ name + '('+ Gender+')');
        System.debug('Company name is '+CompanyName);
    }
        public static void printCandidateInfoST() {
            System.debug('company name is '+ CompanyName);
            // System.debug('mame = '+Name);
        }
    }

