<?php
/* 
     // ======================================== \
     // Package: Mihalism Multi Host
     // Version: 5.0.0
     // Copyright (c) 2007, 2008, 2009 Mihalism Technologies
     // License: http://www.gnu.org/licenses/gpl.txt GNU Public License
     // LTE: 1252671802 - Friday, September 11, 2009, 08:23:22 AM EDT -0400
     // ======================================== /
     
     This file contains some language settings that are a part of Mihalism Multi Host but were not able to 
     be placed into template files. In each setting, %s represents a place holder for a value that will 
     be dynamically generated by Mihalism Multi Host; so be careful while editing to not remove them.
     
     Language file index:
		001 -- Page title for the Mihalism Multi Host installer
		002 -- Error to be displayed if someone tries to access installer after installation
		003 -- Error to be displayed if not all form fields are filled in
		004 -- Error to be displayed if the entered email is invalid
		005 -- Error to be displayed if an invalid password is given
		006 -- Error to be displayed if the given passwords do not match
		007 -- Error to be displayed if the given username is not valid
		009 -- Error to be displayed if write permission is not given to folder
		010 -- Error to be displayed if the configuration file cannot be created
		011 -- Message to be displayed when website is done installing
		012 -- Error to be displayed if write permission is not given to thumbnail folder
		903 -- Error to be displayed if MySQL connect fails
		332 -- Error to be displayed if folder is not writable
		488 -- Error to be displayed if folder is not writable

*/
    
	$mmhclass->lang['001'] = "Mihalism Multi Host » Installation";
	$mmhclass->lang['002'] = "This installer is disabled because an installation of Mihalism Multi Host already exists.<br />
To reinstall Mihalism Multi Host please empty the file <b>source/includes/config.php</b><br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['003'] = "The form on the previous page has not been filled in completely. <br />
One or more fields have been left blank. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['004'] = "The email address <b>%s</b> appears to be in an invalid format.<br />
A valid address would look like: <b>username@example.com</b>.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['005'] = "The administrator password entered is not valid based on the specified requirements. <br />
It is either too long or too short. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['006'] = "The administrator password entered is not equal to its confirmation field. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['007'] = "The administrator username entered is not valid based on the specified requirements.<br />
It either is too long, too short, or contains forbidden characters. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['009'] = "Please ensure the folder <b>images/</b> has the ability to be read and written to. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['010'] = "Failed to write to the file <b>source/includes/config.php</b>. Please ensure the file is writable. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['011'] = "This website has been successfully installed. <br />
	Please remember to delete or rename (install.php) so it can't be executed. <br />
<br />
<a href=\"index.php\">Site Index</a>";
	$mmhclass->lang['012'] = "Please ensure the folder <b>images/thumbs/</b> has the ability to be read and written to. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['903'] = "Failed to connect to MySQL Database Server.<br />
Please check log in information and try again. <br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['332'] = "Please ensure the folder <b>source/errorlog/ and all folders within it </b> have<br />
the ability be read and written to. A good permission level to be used is: 0777.<br />
<br />
This folder is required to help debug Mihalism Multi Host issues by having error logs.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['488'] = "Please ensure the folder <b>source/tempfiles/</b> has the ability be read and written to. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['489'] = "Please ensure the folder <b>temp/</b> has the ability be read and written to. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['490'] = "Please ensure the folder <b>temp/zip_uploads</b> has the ability be read and written to. <br />
A good permission level is: 0777. Change the permission via SSH or FTP and try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";


?>
