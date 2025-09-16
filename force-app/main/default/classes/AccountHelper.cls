public with sharing class AccountHelper {
    public static void updateAccountName(Id accountId, String newName) {
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Name = newName;
        update acc;
    }
}
//Commenting to test Jenkins job trigger for a new PR