global class vote {
    public vote (apexpages.standardSetController s){
        
    }
    
    @RemoteAction
    global static boolean employeeVote(string leadId, boolean v){
        BooleanApp__c boo = new BooleanApp__c();
        boo.leadId__c=leadId;
        boo.vote__c = v;
        
        insert boo;
        
       return true;
    }
}