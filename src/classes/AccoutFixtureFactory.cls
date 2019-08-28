/**
 * @author: hcaetano
 */
@isTest

public class AccoutFixtureFactory {

/*   
        Account__c account = new Account__c();
        account.name = 'Agrobom';
        account.AccountNumber = 'A0001000';
        
        insert account;
 */
    public static Account buildAccount ( String name ) {
        return new account ( Name = name );
    }

    public static  Account create ( String name ) {
        return create ( buildAccount (name));
    }

    public static Account create ( Account account ) {
        insert account;
        return account;

    }
}
