sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/odata/v4/ODataModel",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
],
function (Controller,ODataModel) {
    "use strict";

    return Controller.extend("employee.controller.View1", {
        onInit: function () {
            
            var oNewModel = new ODataModel({
                serviceUrl: "/odata/v4/employee/"
            });
            this.getView().setModel(oNewModel,"newItem");
        },
        onLogin: function(){
            if(!this._OFragment){
                this._OFragment = sap.ui.xmlfragment("employee.Fragment.Frag",this);
                this.getView().addDependent(this._OFragment);
            }
            this._OFragment.open();
        },
        onUpdateLogin:function(){
            if(!this._OFragment){
                this._OFragment = sap.ui.xmlfragment("employee.Fragment.Frag",this);
                this.getView().addDependent(_OFragment);
            }
            this._OFragment.open();
        },
        onCloseDialog:function(){
            if(this._OFragment){
                this._OFragment.close();
            }
        },
        // onAdd:function(){
        //     var oNewModel = this.getView().getModel("newItem");

        //     //Get the data from the new item Model
        //     var oData =oNewModel.getProperty("/newItem");
        //     var oModel = this.getView().getModel();
        //     var aItems = oModel.getData().items;
        //     // Add the new item data to the items array
        //     aItems.push(oData);
        //     oModel.refresh();
        //     this._OFragment.close();
        // },
        
    });
});
