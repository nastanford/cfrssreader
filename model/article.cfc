/**
*
* @file  model/article.cfc
* @author  Nathan Stanford
* @description The article object handles 
*
*/

component output="true" displayname="article" persistent="true" {
	property name="id" generator="native" ormtype="integer" fieldtype="id";
	property name="title" ormtype="string";
	property name="author" ormtype="string";
	property name="link" ormtype="string";
	property name="content" ormtype="text";
	property name="feed_id" fieldtype="many-to-one" cfc="feed" fkcolumn="feed_id" type="array" inverse="true";

	property name="read" ormtype="true_false";
	property name="starred" ormtype="true_false";
	property name="published_date" ormtype="date";

	public function init(){
		return this;
	}
}