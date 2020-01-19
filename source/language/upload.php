<?php
/* 
     // ======================================== \
     // Package: Mihalism Multi Host
     // Version: 5.0.0
     // Copyright (c) 2007, 2008, 2009 Mihalism Technologies
     // License: http://www.gnu.org/licenses/gpl.txt GNU Public License
     // LTE: 1251507806 - Friday, August 28, 2009, 09:03:26 PM EDT -0400
     // ======================================== /
     
     This file contains some language settings that are a part of Mihalism Multi Host but were not able to 
     be placed into template files. In each setting, %s represents a place holder for a value that will 
     be dynamically generated by Mihalism Multi Host; so be careful while editing to not remove them.
     
     Language file index:
		001 -- Page title for upload page
		002 -- Error to be displayed if file extension is not allowed
		003 -- Error to be displayed if a filesize goes above max allowed
		004 -- Message to be displayed when uploading is disabled
		005 -- Page title for when uploading is disabled
		006 -- Error to be displayed if the file being uploaded is not a true image
		007 -- Message to be displayed when uploading is disabled for Guests only
		008 -- Standard PHP upload errors - http://php.net/features.file-upload.errors
		009 -- Error to be displayed if server runs out of randomly generated filenames - Most likely will never be reached
		010 -- Error to be displayed if an image file upload fails
		011 -- Error to be displayed if URL uploading is not possible
		012 -- Error to be displayed if an invalid URL is given during URL upload
		013 -- Error to be displayed if the given URL during cannot be accessed
		014 -- Error to be displayed if no files are given during upload
		254 -- Error if no linked images are found
		743 -- Error to be displayed if webpage cannot be opened for scanning

*/
    
	$mmhclass->lang['001'] = "ارسال عکس";
	$mmhclass->lang['002'] = "تصویر <b>%s</b>, با پسوند <b>.%s</b>, مجاز به ارسال نیست.";
	$mmhclass->lang['003'] = "حجم تصویر <b>%s</b> بیش از مقدار مجاز <b>%s</b> بابت هر فایل است.";
	$mmhclass->lang['004'] = "ارسال تصویر غیر فعال است.<br />
جهت اطلاعات بیشتر: <a href=\"contact.php?act=contact_us\">تماس با ما</a>.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['005'] = "ارسال عکس غیر فعال است.";
	$mmhclass->lang['006'] = "فایل <b>%s</b> یک تصویر نیست و امکان آپلود آن وجود ندارد.";
	$mmhclass->lang['007'] = "با عرض پوزش، تنها اعضا مجاز به ارسال تصاویر می باشند.<br />
لطفا عضو شوید یا وارد حساب کاربری خود بشوید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['008'] = array (
  1 => '<b>PHP Engine Error</b>: The image file <b>%s</b> exceeds the <a href="http://us2.php.net/manual/en/ini.core.php#ini.upload-max-filesize">upload_max_filesize</a> directive in php.ini.',
  2 => '<b>PHP Engine Error</b>: The image file <b>%s</b> exceeds the <b><i>MAX_FILE_SIZE</i></b> directive that was specified in the HTML form.',
  3 => '<b>PHP Engine Error</b>: The image file <b>%s</b> was only partially uploaded.',
  6 => '<b>PHP Engine Error</b>: Missing a temporary folder.',
  7 => '<b>PHP Engine Error</b>: Failed to write the image file <b>%s</b> to disk.',
  8 => '<b>PHP Engine Error</b>: Upload stopped by extension.',
);
	$mmhclass->lang['009'] = "The filename <b>%s</b> already exists on this server.";
	$mmhclass->lang['010'] = "The image file <b>%s</b> failed to upload due to disk write error.";
	$mmhclass->lang['011'] = "<b>PHP Engine Error:</b> The <a href=\"http://php.net/ini.core\"><b>allow_url_fopen</b></a> directive must be enabled in php.ini OR <a href=\"http://www.php.net/manual/en/book.curl.php\">cURL</a> must be loaded as a PHP extension in order to use URL upload.";
	$mmhclass->lang['012'] = "The source URL of the image file <b>%s</b> is malformed.";
	$mmhclass->lang['013'] = "The source URL of the image file <b>%s</b> did not return a <a href=\"http://en.wikipedia.org/wiki/List_of_HTTP_status_codes\">200 OK</a> status and therefore could not be uploaded.";
	$mmhclass->lang['014'] = "Please go back and select at least one image file to upload.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['254'] = "تصویر مورد نظر در مقصد یافت نشد<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['743'] = "آدرس مورد نظر اجازه مرور را نمی دهد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";

    $mmhclass->lang['061'] = "کد تائید وارد شده صحیح نیست.<br />
کد جدید ایجاد شده است، دوباره تلاش کنید.<br />
    <br />
    <a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
    $mmhclass->lang['101'] = "فایل مورد نظر شما یک فایل فشرده - ZIP -  استاندارد نمی باشد !<br/>";
    $mmhclass->lang['103'] = "The filesize of the archive <b>%s</b> exceeds the maximum allowed size of <b>%s</b> per file.";
    $mmhclass->lang['015'] = "لطفا حجم فایل فشرده خود را کاهش دهید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
?>