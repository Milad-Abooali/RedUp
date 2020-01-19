<!-- BEGIN: USER REGISTRATION PAGE -->
<template id="registration_page">
<div class="col-lg-9 pull-right text-right">

    <form action="users.php?act=register-d" method="post">
    <input type="hidden" name="return" value="<# RETURN_URL #>" />
        <div class="table_border" dir="rtl">
        <table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
                <tr>
                    <td style="width: 30%;" valign="top"class="tdrow1">نام کاربری<br />
                    <small>حداقل 3 کاراکتر - حداکثر 20 کاراکتر</small></td> 
                    <td class="tdrow2" valign="top" dir="ltr"  align="right">
                        <input type="text" name="username" id="username_field"  maxlength="30" class="form-control"  />
                        <br />
                        <div id="username_check"><a href="javascript:void(0);" onclick="check_username();">بررسی مجاز بودن نام کاربری</a><br /><br /></div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%;" valign="top" class="tdrow1">رمز عبور<br />
                    <small>حداقل 6 کاراکتر - حداکثر 30 کاراکتر</small>
                    </td> 
                    <td class="tdrow2" valign="top" dir="ltr"  align="right">
                    <input type="password"  id="pas" name="password" class="form-control"  />
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%;" class="tdrow1">تکرار رمز عبور</td> 
                    <td class="tdrow2" dir="ltr"  align="right"><input type="password"  id="pas" name="password-c" class="form-control"  /></td>
                </tr>
                <tr>
                    <td style="width: 30%;" class="tdrow1"></td> 
                    <td class="tdrow2" valign="top" dir="ltr"></td>
                </tr>
                <tr>
                    <td style="width: 30%;" class="tdrow1">آدرس پست الکترونیک شما</td> 
                   <td class="tdrow2" valign="top" dir="ltr"  align="right"> <input type="text"  id="eme" class="form-control" name="email_address" /></td>
                </tr><!--
                <tr>
                    <td style="width: 30%;" class="tdrow1" valign="top"> </td> 
                    <td class="tdrow2" dir="ltr" align="right"><br /> <# CAPTCHA_CODE #> </td> 
                </tr>-->
                <tr>
                    <td class="tdrow2" colspan="2" style="height: 35px;">
                        <div class="text_align_center">
                            <input type="checkbox" name="iagree" id="iagree" value="1" /> <label for="iagree">
                            من تابع
                            <a target="_blank"  href="info.php?act=rules">قوانین سایت</a>
                            هستم.</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="حساب من را  ایجاد کن" class="btn btn-success btn-block" /></td>
                </tr>
            </table>
        </div>
    </form>
</div>
</template>
<!-- END: USER REGISTRATION PAGE -->

<!-- BEGIN: USER REGISTRATION HARD LIMIT EMAIL -->
<template id="user_registration_hard_limit">
<br />
<# SITE_NAME #> Administrator,
<br /><br />
The hard limit of 5 user accounts per IP address has<br />
been exceeded by the user with the IP address: <a href="http://whois.domaintools.com/<# IP_ADDRESS #>" target="_new"><# IP_ADDRESS #></a>.
<br /><br />
To take action, log in to the Admin Control Panel at:
<br /><br />
<# BASE_URL #>admin.php

</template>
<!-- END: USER REGISTRATION HARD LIMIT EMAIL -->

<!-- BEGIN: USER LOGIN LIGHTBOX -->
<template id="login_lightbox">
M.Abooal:
سلام جوجو :D
</template>
<!-- END: USER LOGIN LIGHTBOX -->

<!-- BEGIN: FORGOTTEN PASSWORD LIGHTBOX -->
<template id="forgotten_password_lightbox">
M.Abooal:
سلام جوجو :D
</template>
<!-- END: FORGOTTEN PASSWORD LIGHTBOX -->

<!-- BEGIN: FORGOTTEN PASSWORD EMAIL -->
<template id="forgotten_password_email">
M.Abooal:
سلام جوجو :D
</template>
<!-- END: FORGOTTEN PASSWORD EMAIL -->

<!-- BEGIN: USER LIST PAGE -->
<template id="user_list_page">
<div class="col-sm-9 pull-right">
<# PAGINATION_LINKS #>
<br /><br />

<div class="table_border">
	<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
		<tr>
			<th>نام کاربر</th>
			<th>تاریخ عضویت در سایت</th>
			<th>دسنرسی آلبوم ها</th>
			<th>مجموع تصاویر</th>
			<th>درباره کاربر</th>
		</tr>
        
		<while id="user_list_whileloop">
			<tr>
				<td class="<# TDCLASS #>" class="text-right">
				<a title="RSS" href="user-rss.xml?i=<# USER_ID #>"><i class="fa orange fa-fw fa-rss-square"></i></a>
				<a href="users.php?act=gallery&amp;gal=<# USER_ID #>"><# USERNAME #></a></td>
				<td class="<# TDCLASS #>"><# TIME_JOINED #></td>
				<td class="<# TDCLASS #>"><# GALLERY_STATUS #></td>
				<td class="<# TDCLASS #>"><# TOTAL_UPLOADS #></td>
				<td class="<# TDCLASS #>">
                    <a href="profile.php?view=<# USERNAME #>"><i class="fa dark fa-fw fa-user"></i> پروفایل</a>
				</td>
			</tr>
		</endwhile>
        
		<tr>
			<td colspan="5" class="table_footer">&nbsp;</td>
		</tr>
	</table>
</div>
</div>
<# PAGINATION_LINKS #>
<br />
</template>
<!-- END: USER LIST PAGE -->

<!-- BEGIN: MY GALLERY PAGE -->
<template id="my_gallery_page">
<div class="col-sm-9">
<div class="pull-left col-sm-8" style="margin-top: 2px;">
    <ul class="jd_menu">
        <if="$mmhclass->info->user_owned_gallery == true">
     		<li><span onclick="gallery_action('delete');" title="حذف تصاویر انتخابی" class="btn btn-default btn-sm">حذف</span></li>
            <li><span onclick="gallery_action('move');" title="انتقال تصاویر انتخابی" class="btn btn-default btn-sm">انتقال</span></li>
      		<li><span onclick="gallery_action('select');" title="Select/Deselect All" class="btn btn-default btn-sm">انتخاب کل تصاویر</span></li>
      		<!--
            <li><span onclick="gallery_action('make_ext_gal');" title="ایجاد کد جهت نمایش گروه تصاویر" class="btn btn-default btn-sm">تولید گالری</span></li> -->
            <li><span onclick="toggle_lightbox('users.php?act=albums-c', 'new_album_lightbox');" title="ساخت آلبوم جدید"
            class="btn btn-default btn-sm">آلبوم جدید</span></li>
        </endif>
            <li><span class="btn btn-primary btn-sm" data-toggle="collapse" data-target="#albums">فهرست آلبوم ها</span></li>
    </ul>
</div>
<div class="pull-right col-sm-3">
        <if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['search']) == true">
            <input type="text" id="file_search" class="form-control" placeholder="عنوان تصویر" />
            <input type="button" value="یافتن" id="file_search_button" class="btn btn-success btn-sm"
            onclick="location.href=('<# FULL_GALLERY_URL #>&amp;search=' + encodeURIComponent($('input[id=file_search]').val()));" />
        <else>
        	<a href="<# FULL_GALLERY_URL #>" class="button1">پاک کردن جستجو</a>
        </endif>
</div>
<div id="albums" class="col-sm-12 collapse panel panel-default text-right">
    <ul>           
          <li>
          <a title="RSS" href="user-rss.xml?i=<# GALLERY_ID #>"><i class="fa orange fa-fw fa-rss-square"></i></a>
          <a href="<# GALLERY_URL #>">تصاویر من</a> <# TOTAL_ROOT_UPLOADS #> تصویر</li>
<while id="album_pulldown_whileloop">
        <li> <a title="RSS" href="album-rss.xml?i=<# ALBUM_ID #>"><i class="fa orange fa-fw fa-rss-square"></i></a>
            <a href="<# GALLERY_URL #>&amp;cat=<# ALBUM_ID #>"><# ALBUM_NAME #></a> <# TOTAL_UPLOADS #> تصویر
    <if="$mmhclass->info->user_owned_gallery == true">
            ( <a href="javascript:void(0);" onclick="toggle_lightbox('users.php?act=albums-d&amp;album=<# ALBUM_ID #>', 'delete_album_lightbox');">حذف</a> |
            <a href="javascript:void(0);" onclick="toggle_lightbox('users.php?act=albums-r&amp;album=<# ALBUM_ID #>', 'rename_album_lightbox');">ویرایش</a> )
    </endif>
        </li>
</endwhile>
    </ul>
</div>
    <script type="text/javascript" src="source/includes/scripts/gallery.js" charset="UTF-8"></script>
    <div class="col-sm-12">
        <if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['search']) == true">
           <br /><h4><# ALBUM_NAME #> (کاربر: <# GALLERY_OWNER #>)</h4>
        <else>
           <br /><h4>جستجوی "<# IMAGE_SEARCH #>"</h4>
        </endif>
    </div>
<if="$mmhclass->templ->templ_globals['empty_gallery'] == true">
    <div>
        <# EMPTY_GALLERY #>
    </div>
<else>
    <div class="col-sm-12">
        <# PAGINATION_LINKS #>
        </div>
        <# GALLERY_HTML #>
        <div class="col-sm-12">
        <# PAGINATION_LINKS #>
    </div>
</endif>



</template>
<!-- END: MY GALLERY PAGE -->

<!-- BEGIN: MOVE FILES LIGHTBOX -->
<template id="move_files_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>انتقال تصاویر</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
			<br />
			<form action="users.php?act=move_files-d" method="post">
				<p dir="rtl">
					مقصد:
					<br /><br />
                    
					<select name="move_to" style="width: 200px;">
						<option value="root">تصاویر من</option>
                        
						<while id="album_options_whileloop">
							<option value="<# ALBUM_ID #>">&bull; <# ALBUM_NAME #></option>
						</endwhile>
					</select>
					<br /><br />
                    
					<input type="hidden" value="<# FILES2MOVE #>" name="files" />
					<input type="hidden" value="<# RETURN_URL #>" name="return" />
					<input type="submit" value="انتقال تصاویر" class="button1" />
					<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
					

				</p>
			</form>
			<br /><br />
		</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>
</div>
</template>
<!-- END: MOVE FILES LIGHTBOX -->

<!-- BEGIN: DELETE FILES LIGHTBOX -->
<template id="delete_files_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>حذف تصاویر</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
			<br />
			<form action="users.php?act=delete_files-d" method="post">
				<p dir="rtl">
					آیا از حذف تصاویر اطمینان دارید؟ 
					<br /><br />
					در صورت حذف امکان بازگشت نیست.
					<br /><br />
                    
					<input type="hidden" value="<# RETURN_URL #>" name="return" />
					<input type="hidden" value="<# FILES2DELETE #>" name="files" />
                    
					<input type="submit" value="حذف تصاویر" class="button1" />
					<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
				</p>
			</form>
			<br /><br />
		</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

</template>
<!-- END: DELETE FILES LIGHTBOX -->
<!-- BEGIN: NEW ALBUM LIGHTBOX -->
<template id="new_album_lightbox">
 <script type="text/javascript">
 function pwtoggle() {
 
	if ($('input[name=enablepw]').is(':checked')  == true) {
		$('input[name=album_password]').removeAttr('disabled');
	}else {$('input[name=album_password]').attr('disabled',true);}
}
  </script>
<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>ایجاد آلبوم جدید</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
			<br />
			<form action="users.php?act=albums-c-d" method="post">
				<p>
لطفا نام آلبوم را وارد کنید - فقط اعداد و حروف انگلیسی مجاز است
					<br /><br />
					<input type="text" name="album_title" maxlength="50" class="input_field" style="width: 250px;" />
<div class="hhh">
					<input type="radio" name="is_private" value="1" />  
					<input type="radio" name="is_private" value="0" checked /> 
					<input type="checkbox" onchange="pwtoggle();" id="pwcheckbox" name="enablepw" /> 
					<input type="text" name="album_password" maxlength="80" class="input_field" style="width: 250px;" disabled id="pwinput" />
					<input type="hidden" value="<# RETURN_URL #>" name="return" />
 </div>                 
					<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
					<input type="submit" value="ساخت آلبوم جدید" class="button1" />
				</p>
			</form>
			<br /><br />
		</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

</template>
<!-- END: NEW ALBUM LIGHTBOX -->

<!-- BEGIN: RENAME ALBUM LIGHTBOX -->
<template id="rename_album_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>ویرایش آلبوم</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
			<br />
			<form action="users.php?act=albums-r-d" method="post">
				<p>
					نام جدید را وارد کنید:
					<br /><br />
                    
					<input type="text" name="album_title" maxlength="50" class="input_field" style="width: 250px;" value="<# OLD_TITLE #>" onclick="$(this).val('');" />

<input class="hhh"type="radio" name="is_private" value="1" <# IS_PRIVATE #> /> <input class="hhh" type="radio" name="is_private" value="0" <# IS_NOT_PRIVATE #>  /> 
<input class="hhh"type="checkbox" id="pwcheckbox" name="enablepw" <# HAS_PASSWORD #> />
<input class="hhh"type="hidden"name="album_password" maxlength="80" class="input_field" style="width: 250px;" id="pwinput" />
					<input class="hhh"type="hidden" value="<# ALBUM_ID #>" name="album" />
					<input class="hhh"type="hidden" value="<# RETURN_URL #>" name="return" />
					<input class="hhh"type="hidden" value="<# HAS_PASSWORD #>" name="state" /><br />
					<input type="submit" value="تغییر نام آلبوم" class="button1" />
					<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
				</p>
	    	</form>
			<br /><br />
		</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

</template>
<!-- END: RENAME ALBUM LIGHTBOX -->

<!-- BEGIN: DELETE ALBUM LIGHTBOX -->
<template id="delete_album_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>تائید حذف آلبوم</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
			<br />
			<form action="users.php?act=albums-d-d" method="post">
				<p>
					آیا مطئمئن هستید قصد حذف آلبوم را دارید؟
					<br /><br />
					این عمل امکان بازگشت ندارد
					<br /><br />
                    
					<input type="hidden" value="<# ALBUM2DELETE #>" name="album" />
                    
					<input type="submit" value="آلبوم حذف شود" class="button1" />
					<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
                    <br /><br />
                    
					<div style="font-size: 10px; font-style: italic;">
                    	<strong>Note:</strong> تصاویر این آلبوم به دسته بندی نشده ها منتقل خواهند شد
                    </span>
				</p>
			</form>
			<br /><br />
		</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

</template>
<!-- END: DELETE ALBUM LIGHTBOX -->

<!-- BEGIN: USER SETTINGS PAGE -->
<template id="user_settings_page">
<div class="col-sm-9 pull-right">
<form action="users.php?act=settings-s" method="post">
	<div class="table_border" dir="rtl">
		<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;text-align:right;">
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>شماره کاربر</span>:</td>
				<td class="tdrow2"><# USER_ID #></td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>نام کاربری</span>:</td>
				<td class="tdrow2"><# USERNAME #></td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;" valign="top"><span>رمز عبور</span>: <br /> </td>
				<td class="tdrow2" valign="top"><input dir="ltr" type="password" style="width: 300px;" class="form-control" name="password" maxlength="30" value="*************" /></td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>IP کاربر</span>:</td>
				<td class="tdrow2"><p title="<# IP_HOSTNAME #>" class="help"><# IP_ADDRESS #></p> ( <a href="http://whois.domaintools.com/<# IP_ADDRESS #>" target="_blank">کیست؟</a> | <a href="http://just-ping.com/index.php?vh=<# IP_ADDRESS #>" target="_blank">پینگ</a> )</td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>پست الکترونیک</span>: <br /> </td>
				<td class="tdrow2" valign="top"><input dir="ltr" type="text" style="width: 300px;" name="email_address" class="form-control" value="<# EMAIL_ADDRESS #>" /></td>
				<td class="tdrow2"><input type="radio" name="email_visible" value="0" <# EMAIL_NOONE #> /> خصوصی <input type="radio" name="email_visible" value="1" <# EMAIL_EVERYONE #> /> عمومی <input class="hhh" type="radio" name="email_visible" value="2" <# EMAIL_FRIENDS #> /></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%"><span> سطح دسترسی گالری تصاویر</span>: <br /></td>
				<td class="tdrow2" valign="top"><input type="radio" name="private_gallery" value="1" <# PRIVATE_GALLERY_YES #> /> خصوصی <input type="radio" name="private_gallery" value="0" <# PRIVATE_GALLERY_NO #> /> عمومی</td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"></td>
				<td class="tdrow2">
					<input class="hhh" type="radio" name="upload_type" value="standard" checked <# STANDARD_UPLOAD_YES #> />
					<input class="hhh" type="radio" name="upload_type" value="boxed" <# BOXED_UPLOAD_YES #> />
				</td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>تاریخ عضویت</span>:</td>
				<td class="tdrow2"><# TIME_JOINED #></td>
				<td class="tdrow2"></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>گروه کاربری</span>:</td>
				<td class="tdrow2"><# USER_GROUP #></td>
				<td class="tdrow2"></td>
			</tr>

		</table><br />
<input type="submit" value="دخیره تنظیمات" class="btn btn-success btn-sm" />

	</div>
</form> 
</div>
</template>
<!-- END: USER SETTINGS PAGE -->
<!-- BEGIN: EXT GALLERY LIGHTBOX -->
<template id="ext_gallery_lightbox">
<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>ساخت گالری از تصاویر</th>
	</tr>
	<tr>
	<td class="tdrow1 text_align_center">
	<form action="users.php?act=do_ext_gal" method="post"dir="rtl">
	<input type="radio" name="design" value="left"> چپ 
	<input type="radio" name="design" value="right"> راست 
	<input type="radio" name="design" value="bottom" checked> پایین
	<br/><br />
	<select name="color"> 
		<option value="grey" selected="selected">خاکستری</option>
		<option value="green">سبز</option>
		<option value="blue">آبی</option>
		<option value="black">مشکی</option>
		<option value="red">قرمز</option>
		<option value="yellow">زرد</option>
	</select>
	<br /><br />
	<input type="hidden" value="<# RETURN_URL #>" name="return" />
	<input type="hidden" value="<# FILES2GALERIZE #>" name="files" />
	<input type="submit" value="دریافت کد" class="button1" />
	<input type="button" value="پشیمان شدم" class="button1" onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');" />
	</form>
	</td>
	</tr>
	<tr>
		<td class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>
</template>
<!-- END: EXT GALLERY LIGHTBOX -->
<!-- BEGIN: EXT GALLERY DONE -->
<template id="ext_gallery_done">
<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>کد جهت نمایش گالری در سایت / وبلاگ</th>
	</tr>
	<tr>
	<td dir="rtl">
	<textarea rows="35" cols="80" onclick="highlight(this);"><# GAL_CSS #><# EXT_GAL_LAYOUT #></textarea>
	<br />
	<br />
	<center>
	<a href="users.php?act=gallery">تصاویر من</a><br />
	<a href="index.php">ارسال عکس</a>
	</center>
	</td>
	</tr>
	<tr>
		<td class="table_footer"></td>
	</tr>
</table>
</template>
<!-- END: EXT GALLERY DONE -->
<!-- BEGIN: USER GALLERY CELL -->
<template id="user_gallery_layout">

<# TABLE_BREAK #>
<td class="<# TDCLASS #> text_align_center" valign="top">
<if="$mmhclass->info->config['seo_urls'] == '0'">
	<if="$mmhclass->templ->templ_globals['file_options'] == true">
		<input type="checkbox" name="userfile" value="<# FILENAME #>" />
    	<input type="text" id="<# FILE_ID #>_title_rename" maxlength="25" style="width: 165px; display: none;" class="input_field" onblur="gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');" onkeydown="if(event.keyCode==13){gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');}" />
		<span class="arial" title="Click to change title" id="<# FILE_ID #>_title" onclick="gallery_action('rename', this.id);" class="font-weight: 700;"><# FILE_TITLE #></span>  - <a href="img.php?image=<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook"><img src="css/images/mag_glass.png" border="0" alt="View Fullsize"></a>
	<else>
		<a href="viewer.php?file=<# FILENAME #>" title="<# FILENAME #>"><strong><# FILE_TITLE #></strong></a> - <a href="img.php?image=<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook"><img src="css/images/mag_glass.png" border="0" alt="View Fullsize"></a>
	</endif>
    
    <br /><br />
	<a href="viewer.php?file=<# FILENAME #>"><img src="index.php?module=thumbnail&amp;file=<# FILENAME #>" alt="<# FILENAME #>" style="border: 1px solid #000000;padding:1px;" /></a>
	<br /><br />
	<a href="download.php?file=<# FILENAME #>"><img border="0" src="./css/images/dl_new.png" alt="Download"  valign="center" title="Download" class="button1" /></a> <a href="javascript:void(0);" onclick="toggle_lightbox('index.php?module=fileinfo&amp;file=<# FILENAME #>', 'file_info_lightbox');"><img border="0" src="./css/images/img_info.png" alt="More Info"  valign="center" title="More Info" class="button1" /></a><# EDITOR_LINK #>
</td>
<else>
	<if="$mmhclass->templ->templ_globals['file_options'] == true">
		<input type="checkbox" name="userfile" value="<# FILENAME #>" />
    	<input type="text" id="<# FILE_ID #>_title_rename" maxlength="25" style="width: 165px; display: none;" class="input_field" onblur="gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');" onkeydown="if(event.keyCode==13){gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');}" />
		<span class="arial" title="Click to change title" id="<# FILE_ID #>_title" onclick="gallery_action('rename', this.id);" class="font-weight: 700;"><# FILE_TITLE #></span>  - <a href="<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook"><img src="css/images/mag_glass.png" border="0" alt="View Fullsize"></a>
	<else>
		<a href="<# FILENAME #>.html" title="<# FILENAME #>"><strong><# FILE_TITLE #></strong></a> - <a href="<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook"><img src="css/images/mag_glass.png" border="0" alt="View Fullsize"></a>
	</endif>
    
    <br /><br />
	<a href="<# FILENAME #>.html"><img src="thumb.<# FILENAME #>" alt="<# FILENAME #>" style="border: 1px solid #000000;padding:1px;" /></a>
	<br /><br />
	<a href="download.php?file=<# FILENAME #>"><img border="0" src="./css/images/dl_new.png" alt="Download"  valign="center" title="Download" class="button1" /></a> <a href="javascript:void(0);" onclick="toggle_lightbox('index.php?module=fileinfo&amp;file=<# FILENAME #>', 'file_info_lightbox');"><img border="0" src="./css/images/img_info.png" alt="More Info"  valign="center" title="More Info" class="button1" /></a><# EDITOR_LINK #>
</td>
</endif>
</template>
<!-- END: USER GALLERY CELL -->
<!-- BEGIN: IMAGE EDITOR PAGE -->
<template id="img_editor_page">
<div class="col-sm-9 pull-right">

	<script type="text/javascript" src="source/includes/scripts/editor/jQueryEasing.js"  charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/editor/jQueryRotate.js"  charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/editor/grayscale.js"  charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/editor/pixastic.js"  charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/editor/edit_functions.js"  charset="UTF-8"></script>
<div class="text_align_center">
جهت لغو یک ویرایش کلید × قرمز رنگ را بفشارید.
<br /><br />
<img  class="light" src="css/images/greyscale.png" alt="Render image greyscale" border="0" onclick="makeitgray();">&nbsp;&nbsp;
<img class="light" src="css/images/sepia.png" alt="Sepia Filter" border="0" onclick="doPixastic('sepia');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img class="light" src="css/images/counter_clockwise.png" alt="Rotate Image Counterclockwise" border="0" onclick="rotate(-90);">&nbsp;&nbsp;
<img class="light" src="css/images/180_dg.png" alt="Rotate Image 180DG" border="0" onclick="rotate(180);">&nbsp;&nbsp;
<img class="light" src="css/images/clockwise.png" alt="Rotate Image Counterclockwise" border="0" onclick="rotate(90);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img class="light" src="css/images/flip_h.png" alt="Flip Horizontally" border="0" onclick="doPixastic('flipv');">&nbsp;&nbsp;
<img class="light" src="css/images/flip_v.png" alt="Flip Vertically" border="0" onclick="doPixastic('fliph');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img class="light" src="css/images/save.png" alt="Save changes" border="0" onclick="saveImage('<# FILE_ID #>');">&nbsp;&nbsp;
<img class="light" src="css/images/undo.png" alt="Undo changes" border="0" onclick="undoChanges();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="users.php?act=gallery"><img class="light" src="css/images/return.png" alt="Return to Gallery" border="0"></a>
<br /><hr/>
<div id="response"></div>
<div id="imgeditor" style="overflow:scroll;">
	<img src="img.php?image=<# FILENAME #>" alt="Image to edit" style="border: 1px solid #000000; padding: 2px; max-width:840px;margin-top:1%;" id="imageineditor" />
	</div>
</div>

</template>
<!-- END: IMAGE EDITOR PAGE -->
<!-- BEGIN: ALBUM IS PW PROTECTED -->
<template id="album_has_pw_page">
<div class="text_align_center">
    <h1>This Album is password protected!</h1>
    <br/><br/>Please enter password:<br/>
    <input type="text" name="password" class="input_field" style="width: 200px;" /></td><br/><br/>
    <a onclick="checkPW(<# ALBUM_ID #>, <# GALLERY_ID #>);" class="button1">Submit</a>
    <br/><br/><div id="result"></div>
</div>
</template>
<!-- END: ALBUM IS PW PROTECTED -->
