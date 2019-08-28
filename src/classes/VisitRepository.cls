/**
 * @author: hcaetano
 */


public class VisitRepository {

    public List<Visita__c> findByZipCode (String ZipCode) {
        return [ SELECT Id, Name, Cep__c, RecordType.Name, RecordType.DeveloperName
                         FROM Visita__c
                         where Cep__c LIKE :ZipCode
                         LIMIT 100 ];
    }
}