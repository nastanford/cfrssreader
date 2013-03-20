/**
*
* @file  model/folder.cfc
* @author  Nathan Stanford
* @description The folder object handles organization of the feeds
*
*/

component output="true" displayname="folder" persistent="true" {
	property name="id" generator="native" ormtype="integer" fieldtype="id";
	property name="name" ormtype="string";

	public function init(){
		return this;
	}
}