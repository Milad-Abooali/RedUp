<?php
/* 
     // ======================================== \
     // Package: Mihalism Multi Host
     // Version: 5.0.0
     // Copyright (c) 2007, 2008, 2009 Mihalism Technologies
     // License: http://www.gnu.org/licenses/gpl.txt GNU Public License
     // LTE: 1251507710 - Friday, August 28, 2009, 09:01:50 PM EDT -0400
     // ======================================== /
     
     This file contains some language settings that are a part of Mihalism Multi Host but were not able to 
     be placed into template files. In each setting, %s represents a place holder for a value that will 
     be dynamically generated by Mihalism Multi Host; so be careful while editing to not remove them.
     
     Language file index:
		001 -- Default page title for user related pages
		002 -- Error to be displayed if a page requires an user to be logged in
		003 -- Extended page title for the user settings page
		004 -- Error to be displayed if a form has not been filled in completely
		005 -- Error to be displayed if an email address is invalid
		006 -- Error to be displayed if an invalid password is supplied
		007 -- Error to be displayed if an email address is already in use
		008 -- Message to be displayed when user settings have been changed
		009 -- Catch all error for nonexistent pages
		010 -- Group title for administrators
		011 -- Group title for normal users
		012 -- Group title for the root administrator
		013 -- Error to be displayed if not all input parameters (GET/POST) are supplied
		014 -- Error to be displayed if an album is unable to be deleted
		015 -- Extended page title for the delete album page
		016 -- Message to be displayed when an album has been deleted
		017 -- Error to be displayed if an album is unable to be renamed
		018 -- Extended page title for the rename album page
		019 -- Message to be displayed when an album has been renamed
		020 -- Extended page title for the new album page
		021 -- Message to be displayed when a new album has been created
		022 -- Error to be displayed when an album name is already in use
		023 -- Error to be displayed when no filename is supplied
		024 -- Error to be displayed when an image does not exist
		025 -- This language setting is no longer in use by Mihalism Multi Host
		026 -- Extended page title for the delete images page
		027 -- Error to be displayed when an image is not able to be deleted
		028 -- Error to be displayed when the thumbnail of an image is not able to be deleted
		029 -- Message to be displayed when an image has been deleted
		030 -- This language setting is no longer in use by Mihalism Multi Host
		031 -- Extended page title for the move images page
		032 -- Message to be displayed when an image has been moved
		033 -- Extended page title for an user gallery page
		034 -- Extended page title for the user galleries list
		035 -- Notice to be displayed if a gallery is private
		036 -- Notice to be displayed if a gallery is public
		037 -- Extended page title for log out page
		038 -- Message to be displayed when an user has been logged out
		039 -- Error to be displayed when log out fails
		040 -- Message to be displayed when registration is disabled
		041 -- Extended page title for user registration page
		042 -- Error to be displayed when a password does not match its confirmation field
		043 -- Error to be displayed when an invalid username is supplied
		044 -- Error to be displayed when an username is already in use
		045 -- Message to be displayed when an user has registered
		046 -- Extended page title for the user log in page
		047 -- Error to be displayed if invalid log in is supplied
		048 -- Message to be displayed when an user has logged in
		049 -- Error to be displayed when user log in has failed
		050 -- Extended page title for the user password reset page
		051 -- Error to be displayed if an invalid account is supplied to password reset page
		052 -- Email subject for password reset email
		053 -- Message to be displayed when a password reset activation email is sent
		054 -- Error to be displayed when an email is not able to be sent
		055 -- Extended page title for reset password activation page
		056 -- Error to be displayed if an invalid activation key is supplied
		057 -- Message to be displayed when an user password has been reset
		058 -- Message to be displayed when a gallery is empty
		059 -- Message to be displayed when a gallery is set to private
		060 -- This language setting is no longer in use by Mihalism Multi Host
		061 -- Error to be displayed when an invalid reCAPTCHA code is supplied
		062 -- Error to be displayed if a gallery does not exist
		675 -- Message to be displayed if no image search results are returned
		333 -- Extended page title for Image Editor
		992 -- Error to be displayed if an IP Address tries to create more than 5 accounts
		704 -- Email subject to be used when user registration hard limit is exceeded
		949 -- Error to be displayed if album does not exist when moving images
		800 -- Error to be displayed if invalid password for Album has been set.

*/
    
	$mmhclass->lang['001'] = " ";
	$mmhclass->lang['002'] = "تنها کاربران مجاز به مشاهده این صفحه هستند<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['003'] = "تنظیمات کاربر » %s";
	$mmhclass->lang['9003'] = "پروفایل من » %s";
	$mmhclass->lang['004'] = " اطلاعات وارده شده کامل نیست.<br />
لطفا مجدد با دقت اطلاعات را وارد نمائید. <br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['005'] = "آدرس <b>%s</b> یک فرمت صحیح پست الکترونیک نیست.<br />
به طور مثالاین فرمت صحیح است: <b>username@example.com</b>.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['006'] = "رمز عبور شما فاقد حداقل های امنیتی مورد نظر می باشد. <br />
ممکن است بیش از اندازه کوتاه یا بلند باشد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['007'] = "قبلا با آدرس <b>%s</b> در سایت ما ثبت نام صورت گرفته است.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['008'] = "تنظیمات با موفقیت به روز شد.<br />
<br />
<a href=\"users.php?act=settings\">ویرایش مجدد تنظیمات</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['009'] = "در سایت خطایی پیش آمده لطفا به صفحه قبلی باز گردید.";
	$mmhclass->lang['010'] = "مدیر";
	$mmhclass->lang['011'] = "کاربر سایت";
	$mmhclass->lang['012'] = "مدیر کل سایت";
	$mmhclass->lang['013'] = "An invalid number of input parameters (<a href=\"http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods\">GET / POST</a>) have been supplied.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['014'] = "آلبوم مورد نظر قابل حذف شدن نیست.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['015'] = "حذف آلبوم";
	$mmhclass->lang['016'] = "آلبوم مورد نظر با موفقیت حذف شد.<br />
<br />
<a href=\"users.php?act=gallery\">بازگشت به تصاویر من</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['017'] = "امکان ویرایش نام این آلبوم وجود ندارد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['018'] = "ویرایش نام آلبوم";
	$mmhclass->lang['019'] = "تغییرات روی آلبوم <b>%s</b> اعمال شد.<br />
<br />
<a href=\"index.php?rurl=%s\">بازگشت</a><br />
<a href=\"users.php?act=gallery&cat=%s\">بازگشت به آلبوم ویرایش شده</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['020'] = "آلبوم جدید";
	$mmhclass->lang['021'] = "آلبوم <b>%s</b> با موفقیت ایجاد شد.<br />
<br />
<a href=\"index.php?rurl=%s\">بازگشت</a><br />
<a href=\"users.php?act=gallery&cat=%s\">مشاهده آلبوم جدید</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['022'] = "قبلا یک آلبوم با این نام (<b>%s</b>) ایجاد شده است.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['023'] = "No filename has been supplied.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['024'] = "فایل تصویر <b>%s</b> یافت نشد. <br />
از درست بودن نام فایل اطمینان حاصل کنید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['025'] = "";
	$mmhclass->lang['026'] = "حذف تصاویر";
	$mmhclass->lang['027'] = "امکان حذف تصویر <b>%s</b> وجود ندارد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['028'] = "فایل نمایه تصویر <b>%s</b> قابل حذف نیست.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['029'] = "تصاویر با موفقیت حذف شدند.<br />
<br />
<a href=\"index.php?rurl=%s\">بازگشت</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['333'] = "ویرایش تصویر";
	$mmhclass->lang['030'] = "";
	$mmhclass->lang['031'] = "انتقال تصاویر";
	$mmhclass->lang['032'] = "تصاویر با موفقیت منتقل شدند.<br />
<br />
<a href=\"index.php?rurl=%s\">بازگشت</a><br />
<a href=\"users.php?act=gallery&cat=%s\">نمایش آلبوم جدید</a><br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['033'] = "تصاویر کاربر";
	$mmhclass->lang['034'] = "تصاویر کاربران سایت";
	$mmhclass->lang['035'] = "فقط من";
	$mmhclass->lang['036'] = "من و جهان";
	$mmhclass->lang['037'] = "خروج";
	$mmhclass->lang['038'] = "شما با موفقیت از سایت خارج شده اید.<br />
<br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['039'] = "× خطا در خارج شدن از سایت ×";
	$mmhclass->lang['040'] = "در حال حاضر امکان عضویت فعال نیست.<br />
جهت کسب اطلاعات بیشتر با ما تماس بگیرید: <a href=\"contact.php?act=contact_us\">تماس با ما</a><br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['041'] = "عضویت در سایت";
	$mmhclass->lang['042'] = "تائید رمزو عبور با رمز عبور یکسان نیست، لطفا اصلاح کنید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['043'] = "نام کاربری مورد نظر شما مجاز نیست.<br />
ممکن است بسیار کوتاه یا بلند یا شامل کاراکتر های غیر مجاز باشد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['044'] = "قبلا نام کاربری <b>%s</b> استفاده شده است.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['045'] = "<b>%s</b>، تبریک عرض می کنیم، حساب کاربری شما ایجاد شد.<br />
شما هم اکنون می توانید وارد حساب کاربری خود شوید.<br />
<br />
<a href=\"#\">ارسال عکس</a>";
	$mmhclass->lang['046'] = "ورود به سایت";
	$mmhclass->lang['047'] = "کاربری با مشخصات مورد نظر شما یافت نشد، مجدد تلاش کنید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['048'] = "شما با موفقیت وارد سایت شدید.<br />
<br />
<a href=\"users.php?act=gallery\">تصاویر من</a><br />
<a href=\"index.php?rurl=%s\">بازگشت</a>";
$mmhclass->lang['1048'] = "شما با موفقیت وارد سایت شده اید.<br />
<br />
<a href=\"my-gallery\">تصاویر من</a><br />
<a href=\"index.php?rurl=%s\">بازگشت</a>";
	$mmhclass->lang['049'] = "خطا در ورود به سایت";
	$mmhclass->lang['050'] = "بازیافت رمز عبور";
	$mmhclass->lang['051'] = "کاربری با مشخصات مورد نظر یافت نشد مجدد سعی کنید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['052'] = "بازیافت رمز عبور فعال شد. %s (#%s)";
	$mmhclass->lang['053'] = "یک ایمیل جهت تعیین هویت ارسال شد: <b>%s</b>.<br />
رمز عبور حاضر تا قبل از کلیک بر روی لینک موجود در ایمیل مذکور تغییر نخواهد کرد.<br />
<br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['054'] = "خطا در سرور - امکان ارسال ایمیل نیست.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['055'] = "فعال سازی بازیافت رمز عبور";
	$mmhclass->lang['056'] = "خطا در کلید فعالسازی - رمز عبور شما بازیافت نخواهد شد.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['057'] = "رمز عبور با موفقیت به روز شد.<br />
<br />
<a href=\"index.php\">ارسال عکس</a>";
	$mmhclass->lang['058'] = "تصویری وجود ندارد";
	$mmhclass->lang['059'] = "این تصاویر شخصی هستند !<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['060'] = "";
	$mmhclass->lang['061'] = "کد تائید وارد شده صحیح نمی باشد.<br />
کد جدید ایجاد شده است، مجددا سعی کنید.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['062'] = "خطا در سایت";
	$mmhclass->lang['675'] = "هیچ ! یافت نشد . . .";
	$mmhclass->lang['992'] = "متاسفانه، از آدرس <b>5</b> در حال حاضر بیش از 5 نفر به صورت همزمان آنلاین هستند.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['704'] = "عضویت امروز به سقفش رسیده است!";
	$mmhclass->lang['949'] = "آلبوم مقصد موجود نیست.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">بازگشت</a>";
	$mmhclass->lang['400'] = 'شما مجاز به این کار نمی باشید.';
	$mmhclass->lang['800'] = 'شما گزینه رمزدارکردن این آلبوم را دارید اما رمزی انتخاب نکرده اید !  <br/>لطفا رمز آلبوم خود را - حداقل 3 کاراکتر - انتخاب نمایئد.';

?>