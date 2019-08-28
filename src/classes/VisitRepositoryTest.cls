
/**
 * @author: hcaetano
 */
@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Account account = AccoutFixtureFactory.create ('heron');

        Visita__c visit = VisitFixtureFactory.create('1222343');
     
        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode ('122%');

        System.assert ( !visits.isEmpty() );
        System.assertEquals ( visit.Id , visits.get(0).Id );

    }

}
