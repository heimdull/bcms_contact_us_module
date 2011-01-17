# Browser CMS Contact Us Module

Contact Us module for BrowserCMS gives you a portlet to put on a contact us page. It will save the submitted question and send an email to a pre-configured email address.

## Getting Started

### Installation
Have a look here to see how BrowserCMS modules installs in BrowserCMS (http://guides.browsercms.org/installing_modules.html)

	gem install bcms_contact_us_module

### Configuration changes

Edit config/environment.rb

	config.gem "browsercms"
	config.gem "bcms_contact_us_module"
	
Run this

	script/generate browser_cms
	rake db:migrate
	
Add this to config/routes.rb

	map.routes_for_bcms_contact_us_module
	map.routes_for_browser_cms

## License
Contact Us is released under a LGPL license, and is copyright 1998-2009 Freddy Andersen, Zerolimits Technology. The complete copyright can be found in COPYRIGHT.txt, and copy of the license can be found in LICENSE.txt.

## Support
If you have problems with this module add a new issue under the issues tab on github