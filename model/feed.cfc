/**
*
* @file  model/feed.cfc
* @author  Nathan Stanford
* @description The feeds object handles the RSS feeds
*
*/

component output="true" displayname="feed" persistent="true" {
	property name="id" generator="native" ormtype="integer" fieldtype="id";
	property name="folder_id" fieldtype="many-to-one" cfc="feed" fkcolumn="folder_id" type="array" inverse="true";
	property name="url" ormtype="string";
	property name="last_updated" ormtype="date";

	public function init(){
		return this;
	}
}