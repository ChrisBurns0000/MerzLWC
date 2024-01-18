public with sharing class GetMerzShippingDetails {
    @AuraEnabled(cacheable=true)
    public static String callMerz(String trackingNumber){
        Http http = new Http();

        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:MerzEndpoint?trackingNumber=' + trackingNumber);
        req.setMethod('GET');
        system.debug('req here ' + req);

        try {
            HttpResponse res =  http.send(req);
            if(res.getStatusCode() == 200){
                return res.getBody();
            }
        }
        catch(Exception e) {
            system.debug('EXCEPTION:: ' + e);
            throw new AuraHandledException(e.getMessage());
        }
        return null;
    }
}