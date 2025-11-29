({
 fetchCodes : function(component, event, helper) {
         component.set('v.mycolumns', [
           
            {label: 'Problem Statement', fieldName: 'Problem_Statement__c', type: 'text'},
                {label: 'Use Cases in AutoRABIT', fieldName: 'Use_Cases_in_AutoRABIT__c', type: 'text'}
            ]);
        var action = component.get("c.fetchUsecase");
        action.setParams({
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.UseCaseList", response.getReturnValue());
                }
        });
        $A.enqueueAction(action);
    }
})