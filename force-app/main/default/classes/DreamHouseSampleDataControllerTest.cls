@isTest
private class DreamHouseSampleDataControllerTest {

    @isTest
    static void test_deleteAll() {

        Property__c property = new Property__c();
        Broker__c broker = new Broker__c();

        insert property;
        insert broker;

        System.assertEquals( 1, [ SELECT count() FROM Property__c ] ,'messege');
        System.assertEquals( 1, [ SELECT count() FROM Broker__c ] ,'messege');

        Test.startTest();

        DreamHouseSampleDataController.deleteAll();

        Test.stopTest();

        System.assertEquals( 0, [ SELECT count() FROM Property__c ],'messege' );
        System.assertEquals( 0, [ SELECT count() FROM Broker__c ] ,'messege');
        System.assertEquals( 10, [ SELECT count() FROM Broker__c ] ,'messege');

    }

}