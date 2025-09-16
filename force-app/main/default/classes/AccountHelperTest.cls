@isTest
private class AccountHelperTest {
    @isTest static void testUpdateAccountName() {
        Account acc = new Account(Name = 'Old Name');
        insert acc;

        Test.startTest();
        AccountHelper.updateAccountName(acc.Id, 'New Name');
        Test.stopTest();

        Account updated = [SELECT Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('New Name', updated.Name);
    }
}
