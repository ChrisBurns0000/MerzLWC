public class MockGetMerzShippingDetails implements HttpCalloutMock {
    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setBody('Shipped- On Time');
        res.setStatusCode(200);
        return res;
    }
}