/**
*
* @file  model/user.cfc
* @author  
* @description
*
*/

component output="true" displayname="user" persistent="true"  {

	property name="id" fieldtype="id" generator="increment" setter="false"; 
	property name="first_name" type="string";
	property name="last_name" type="string";
	property name="email" type="string";
	property name="password" type="string";

	public function init(){
		return this;
	}
}