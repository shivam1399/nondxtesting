({
    handlePOC : function(component, event, helper) {
        component.set("v.UCerrormsg1",false);
        component.set("v.UCerrormsg2",false);
        component.set("v.UCerrormsg3",false);
       var selectPS=component.find("PS1").get("v.value");
         var selectValue1=component.find("PS1").get("v.value");
         var selectValue2=component.find("PS2").get("v.value");
         var selectValue3=component.find("PS3").get("v.value");
        var Usecase1=component.find("UC1").get("v.value");
         var Usecase2=component.find("UC2").get("v.value");
         var Usecase3=component.find("UC3").get("v.value");
        console.log('Usecase1'+Usecase1); 
         console.log('Usecase2'+Usecase2); 
        if(selectPS == null){
            component.set("v.errormsg",true);
          }
        if(selectPS != null){
            if(Usecase1 == ''){
                component.set("v.UCerrormsg1",true);
            }
        }
        
        if(selectValue2 !=null && (Usecase2 == null || Usecase2=='')){
             component.set("v.UCerrormsg2",true);
        }
        
        if(selectValue3 !=null && (Usecase3 == null || Usecase3=='')){
             component.set("v.UCerrormsg3",true);
        }
        
        
         if((selectValue1 != null) && selectValue1 == selectValue2 ){
             console.log('showerror'); 
             component.set("v.errormsgPS",true);
         }
         
         if((selectValue1 != null && selectValue2 !=null) && ((selectValue1 == selectValue3) || (selectValue2 == selectValue3)) ){
             console.log('showerror2');   
             component.set("v.errormsgPS2",true);
         }
        var errmsgps =component.get("v.errormsgPS");
        var errmsgps2 =component.get("v.errormsgPS2");
        var ucmessage1 =component.get("v.UCerrormsg1");
        var ucmessage2 =component.get("v.UCerrormsg2");
         var ucmessage3 =component.get("v.UCerrormsg3");
        
         console.log('errmsgps'+errmsgps);
         console.log('errmsgps2'+errmsgps2);
         console.log('ucmessage1'+ucmessage1);
        console.log('ucmessage2'+ucmessage2);
        console.log('ucmessage3'+ucmessage3);
        
        var err = component.get("v.error");
         console.log('handlePOCError'+err);
        console.log('handlePOCError'+selectPS);
      
        if(err == false && selectPS !=null && errmsgps == false && errmsgps2 == false && ucmessage1 == false && ucmessage2 == false && ucmessage3 == false ){
            console.log('handlePOCError'+err);
          component.find('type').set('v.value', 'ARM');  
        component.find("pocForm").submit();
        }
        

    },
    
    handleLoad : function(component, event, helper) {
		console.log('handle handleLoad');
        component.set("v.showSpinner", false);
         component.set("v.disabled", false);
         component.set("v.disabledMain", true);
         
	},
    
     
	handleSuccess : function(component, event, helper) {
        
         var params = event.getParams();
       
        var newrecordid = params.response.id;
		 console.log('record updated successfully'+newrecordid);
        if(newrecordid != null){
             console.log('record updated successfully');
		//window.open('POCEvaluations/s/')
        component.set("v.saved", true);
        component.set("v.showSpinner", false);
        component.set("v.enableSuccess", true);
        }
       
	},
      ClickBack : function(component, event, helper) {
		
         window.location.reload();
	},
     ClickNext : function(component, event, helper) {
		console.log('ClickNext');
        component.set("v.showSpinner", true);
         component.set("v.disabled", false);
         component.set("v.disabledMain", true);
         
	},
    Clear : function(component, event, helper) {
		console.log('Clickback');
        component.set("v.showSpinner", false);
         component.set("v.disabled", true);
         component.set("v.disabledMain", false);
         
	},
    
    Cancel : function(component, event, helper) {
       window.location.reload();
    },
    
     handleChange : function(component, event, helper) { 
         component.set("v.errormsgPS",false);
         component.set("v.errormsgPS2",false);
         var selectValue1=component.find("PS1").get("v.value");
         var selectValue2=component.find("PS2").get("v.value");
         var selectValue3=component.find("PS3").get("v.value");
		console.log('selectValue1'+selectValue1);
         console.log('selectValue2'+selectValue2);
         console.log('selectValue3'+selectValue3);
         if((selectValue1 != null) && selectValue1 == selectValue2 ){
             console.log('showerror'); 
             component.set("v.errormsgPS",true);
         }
         
         if((selectValue1 != null && selectValue2 !=null) && ((selectValue1 == selectValue3) || (selectValue2 == selectValue3)) ){
             console.log('showerror2');   
             component.set("v.errormsgPS2",true);
         }
         
         
        },
    
    onCheck: function(cmp, evt) {
        cmp.set("v.error",false);
        var NewCount = 0;
		 var checkCmp = cmp.find("VC").get("v.value");
		console.log('checkCmp'+checkCmp);
        if(checkCmp == true){
        NewCount = NewCount + 1;
            console.log('checkCmp'+NewCount);}
	var checkCmp = cmp.find("ALM").get("v.value");
		console.log('checkCmp'+checkCmp);
        if(checkCmp == true){
        NewCount = NewCount + 1;
            console.log('checkCmp'+NewCount);}
        var checkCmp = cmp.find("SCA").get("v.value");
		console.log('checkCmp'+checkCmp);
        if(checkCmp == true){
        NewCount = NewCount + 1;
            console.log('checkCmp'+NewCount);}
        
        var checkCmp = cmp.find("NC").get("v.value");
		console.log('checkCmp'+checkCmp);
        if(checkCmp == true){
        NewCount = NewCount + 1;
            console.log('checkCmp'+NewCount);}
      /*   var checkCmp = cmp.find("TFA").get("v.value");
		console.log('checkCmp'+checkCmp);
        if(checkCmp == true){
        NewCount = NewCount + 1;
            console.log('checkCmp'+NewCount);}*/
        
        if (NewCount > 2)
		{
			console.log('please select only 2');
			cmp.set("v.error",true);
		}
	 }
   
  
})