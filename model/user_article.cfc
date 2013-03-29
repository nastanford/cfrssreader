/**
*
* @file  model/user_feed.cfc
* @author  
* @description
*
*/

component output="true" displayname="user" persistent="true"  {

	property name="id" generator="native" ormtype="integer" fieldtype="id";
	property name="article_id" fieldtype="many-to-one" cfc="article" fkcolumn="article_id" type="array" inverse="true";
	property name="user_id" fieldtype="many-to-one" cfc="user" fkcolumn="user_id" type="array" inverse="true";
	property name="read" ormtype="true_false";
	property name="starred" ormtype="true_false";

	public function init(){
		return this;
	}
}