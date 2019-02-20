public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> findAll(){
      return [select Id,name,Location__Latitude__s, Location__Longitude__s 
      from Account 
      where Location__Latitude__s != null and Location__Longitude__s != null limit 50];
    }
}
