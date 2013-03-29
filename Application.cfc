/**
*
* @file  Application.cfc
*
*/

component {
	setting enablecfoutputonly="yes";
	
	this.name = hash(getCurrentTemplatePath());
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,30,0);
	this.setClientCookies = true;
	this.applicationTimeout = createTimeSpan(0,0,5,0);
 	this.skipCFCWithError = true;
	this.datasource = "rss";
	this.ormEnabled = true;

	this.ormSettings = {
		dbCreate = "update",
		useDBForMapping = false,
		cfclocation = "model",
		dialect="MySQL"
	};

	if ( structKeyExists(url, "rebuild")){
		this.ormSettings.dbCreate = "dropCreate";
	}
	if ( structKeyExists(url, "refresh")){
		this.ormSettings.dbCreate = "update";
	}

	function onRequestStart(){

		if( structKeyExists(url, "rebuild") 
				|| structKeyExists(url, "refresh") ){
			ORMReload();
		}

		return true;

	}

}