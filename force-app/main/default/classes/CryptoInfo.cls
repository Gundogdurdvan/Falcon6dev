public class CryptoInfo {
    public static Map<string,String> CyrptoMap = new Map<string, string>();
    

    public static string showPrice(string coinName){
        string valueOfCoin = '';      
        if (CyrptoMap.containsKey(coinName)) {
            valueOfCoin = CyrptoMap.get(coinName);
        } else {
            System.debug('Coin not found');
        }
       
        return valueOfCoin;
    }
}
