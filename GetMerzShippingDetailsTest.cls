@isTest
private class GetMerzShippingDetailsTest {
    @isTest
    private static void test_200_response_received(){
        Test.setMock(HttpCalloutMock.class, new MockGetMerzShippingDetails());

        test.startTest();
        String response = GetMerzShippingDetails.callMerz('123');
        test.stopTest();
        
        Assert.areEqual(response, 'Shipped- On Time');
    }
}