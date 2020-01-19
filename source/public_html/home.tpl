<!-- BEGIN: NORMAL UPLOAD PAGE -->
<template id="normal_upload_page">
<if="$mmhclass->info->is_user == false">
<script type="text/javascript" src="source/includes/scripts/rc_comp.js"></script>
</endif>
<script type="text/javascript" src="source/plupload/plupload.full.js"></script>
<script type="text/javascript" src="source/plupload/queue/plupload.js"></script>
<script type="text/javascript">
$(function() {
	$("#uploader").pluploadQueue({
		runtimes : 'html5,silverlight,flash,browserplus,html4',
		url : './upload.php',
		max_file_size : '<# MAX_UL_SIZE #>kb',
		chunk_size : '1mb',
		unique_names : false,
		max_file_count : 10,
		multipart : true,
		multipart_params: {session : '<# RAND_SES_VAR #>', upload_it : true},
		filters : [{title : "Image files", extensions : "<# ALLOWED_TYPES #>"}],
		flash_swf_url : 'source/plupload/plupload.flash.swf',
		silverlight_xap_url : 'source/plupload/plupload.silverlight.xap'
	});
	
	$('form').submit(function(e) {
	 var uploader = $('#uploader').pluploadQueue();
            if (uploader.files.length > 0) {
	    if (uploader.files.length > <# MAX_SIMUL_FILES #> ) {
		alert('Too many files in Queue!\nYou are only allowed to upload <# MAX_SIMUL_FILES #> file(s) at once!');
	}else {
            uploader.bind('StateChanged', function() {
		if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
			toggle_lightbox('index.php?act=upload_in_progress', 'progress_bar_lightbox'); 
                    $('form')[0].submit();
                }
            });
            uploader.start();
        }} else {

            alert('You must queue at least one file.');
        }
        return false;
    });
});

</script>
      <div class="col-lg-9 pull-right">     
   <form name='image_uploads_form' id='upload_form' method='post' action='upload.php'>
      <div class="hhh">
         <input type="hidden" name="session" value="<# RAND_SES_VAR #>" />
         <input type="radio" name="upload_type" value="ulfy_standard" <# STANDARD_UPLOAD_YES #> /> 
         <input type="radio" name="upload_type" value="ulfy_boxed" <# BOXED_UPLOAD_YES #> />
      </div>

      <div class="col-lg-5 pull-left">
		<div  class="text-right">
			<i class="fa fa-info-circle fa-fw"></i> پسوندهای مجاز:
			<kbd class="bg-lgreen">jpeg</kbd>
			<kbd class="bg-lgreen">jpg</kbd>
			<kbd class="bg-lgreen">gif</kbd>
			<kbd class="bg-lgreen">png</kbd>
			<kbd class="bg-lgreen">bmp</kbd>
			<kbd class="bg-lgreen">ico</kbd>
			<br />
			<i class="fa fa-info-circle fa-fw"></i> کاربر مهمان:
			5 فایل همزمان حداکثر حجم هر فایل 4 مگابایت
			<br />
			<i class="fa fa-info-circle fa-fw"></i> اعضا:
			30 فایل همزمان حداکثر حجم هر فایل 10 مگابایت
		</div>
      <br />
         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ucopyr" href="#ucopyr">
               <i class="fa fa-copyright fa-fw"></i>
                     انتخاب حق نشر
                  </a>
               </h4>
            </div>
           <div id="ucopyr" class="panel-body collapse">
              <label for="private_upload_0" class="unselectable po">
              <input type="radio" name="private_upload"  id="private_upload_0" value="0" checked="checked" /> عمومی
             <br /> 
             <span class="small dgreen">
              اجازه انتشار تصویر(ها) را به عموم می دهم.
             </span>
              </label>
                                  <br /><br /><label for="private_upload_1" class="unselectable po">
              <input type="radio" name="private_upload" id="private_upload_1" value="1" /> خصوصی
               <br />
             <span class="small dorange">
               فقط خودم مجاز به انتشار لینک تصویر (ها) هستم.
             </span>
               </label>
           </div>
         </div>

         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ualbum" href="#ualbum">
                  <i class="fa fa-cogs fa-fw"></i>
                     تنظیمات بیشتر
                  </a>
               </h4>
            </div>
           <div id="ualbum" class="panel-body collapse">
<if="$mmhclass->info->is_user == true">
           <i class="fa fa-folder fa-fw"></i>
           محل ذخیره تصویر (ها)
               <select name="upload_to" class="r_rc sel">
                  <option value="0" selected="selected">تصاویر من</option>
                  <option disabled="disabled"> . </option>
      <while id="albums_pulldown_whileloop">
                  <option value="<# ALBUM_ID #>">  <# ALBUM_NAME #></option>
      </endwhile>
               </select>
               <br />
               <i class="fa fa-arrows-alt fa-fw"></i>
               تغییر ابعاد تصویر (ها)
               <select name="image_resize" class="r_rc sel">
                  <option value="0" selected="selected">تغییر داده نشود  </option>
                  <option disabled="disabled"> . </option>
                  <option value="1" >  100 × 75 » آواتار  </option>
                  <option value="2" >  150 × 112 » بند انگشتی  </option>
                  <option value="3" >  320 × 240 » مناسب ایمیل  </option>
                  <option value="4" >  640 × 480 » مناسب انجمن  </option>
                  <option disabled="disabled"> . </option>
                  <option value="5" >  800 × 600 » زمینه نمایشگر 15 اینچ  </option>
                  <option value="6" >  1024 × 768 » زمینه نمایشگر 17 اینچ  </option>
                  <option value="7" >  1280 × 1024 » زمینه نمایشگر 19 اینچ  </option>
                  <option value="8" >  1600 × 1200 » زمینه نمایشگر 21 اینچ  </option>
               </select>
<else>
                <div class="col-lg-12 text-right">
                    <span style="font-weight: 700; color: #FF0000">»</span> تغییر ابعاد، ضمن آپلود عکس (فقط اعضا)
                    <br /><br />
                    <span style="font-weight: 700; color: #FF0000">»</span> ویرایش آنلاین تصایر پس از آپلود (فقط اعضا)
                    <br /><br />
                    <span style="font-weight: 700; color: #FF0000">»</span> ایجاد گالری شخصی (فقط اعضا)
                    <br /><br />
                    <span style="font-weight: 700; color: #FF0000">»</span> تعریف نامحدود آلبوم در گالری شخصی (فقط اعضا)
                    <br /><br />
                    <a href="عضویت-در-سایت" class="btn btn-success btn-block" style="color:fff;">عضویت رایگان در سایت</a>
                </div>   
</endif>
            </div>
         </div>
             <button type="submit" class="btn btn-info btn-lg col-lg-12"><i class="fa fa-cloud-upload fa-fw"></i> ارسال تصویر (ها)</button>
      </div>
    <div id="uploader" class="col-lg-7 pull-left">
        <span dir="rtl" style="text-align: center">
        اگر پس از 20 ثانیه صفحه کامل نمایش داده نشد،<br /><br />
        مرورگر شما از Flash، Silverlight، Gears، Browser Plus یا حتی HTML5 پشتیبانی نمی کند!
        </span>
    </div>
   </form>
      </div>
</template>
<!-- END: NORMAL UPLOAD PAGE -->

<!-- BEGIN: URL UPLOAD PAGE -->
<template id="url_upload_page">
<if="$mmhclass->info->is_user == false">
<script type="text/javascript" src="source/includes/scripts/rc_comp.js">></script>
</endif>
<script type="text/javascript">
	function set_upload_type(id)
	{
		$("div[id=upload_types] div:visible").attr("style", "display: none;"); 
		$("div[id=" + $(id).val() + "]").attr("style", "display: block;");	
		
		switch ($(id).val()) {
			case "paste_upload":
				$("input[id=more_files_button]").attr("disabled", "disabled");
				$("span[id=more_instructions]").html("<br />Separate each image URL with a new line.");
				$("span[id=instructions]").html("Enter up to <# MAX_RESULTS #> image file URLs to upload");
				break;
			case "normal_upload":
				$("span[id=more_instructions]").html("&nbsp;");
				$("input[id=more_files_button]").removeAttr("disabled");
				$("span[id=instructions]").html("Enter an image file URL to upload");
				break;
			case "webpage_upload":
				$("input[id=more_files_button]").attr("disabled", "disabled");
				$("span[id=instructions]").html("Enter a webpage URL to upload images from");
				$("span[id=more_instructions]").html("<br />Only the first <# MAX_RESULTS #> images that are found will be uploaded.");
				break;
		}
	}
</script>
      <div class="col-lg-4 pull-right">
          <div  class="text-right">
             <i class="fa fa-info-circle fa-fw"></i> پسوندهای مجاز:
             <kbd class="bg-lgreen">jpeg</kbd>
             <kbd class="bg-lgreen">jpg</kbd>
             <kbd class="bg-lgreen">gif</kbd>
             <kbd class="bg-lgreen">png</kbd>
             <kbd class="bg-lgreen">bmp</kbd>
             <kbd class="bg-lgreen">ico</kbd>
             <br /><br />
             <i class="fa fa-info-circle fa-fw"></i> کاربر مهمان:
             5 فایل همزمان حداکثر حجم هر فایل 4 مگابایت
             <br /><br />
             <i class="fa fa-info-circle fa-fw"></i> اعضا:
             30 فایل همزمان حداکثر حجم هر فایل 10 مگابایت
          </div>
      </div>
      <div class="col-lg-5 pull-right">
    <form action="upload.php" method="post" id="upload_form" enctype="multipart/form-data" name="upload_form">
      <div class="hhh">
         <input type="hidden" name="session" value="<# RAND_SES_VAR #>" />
         <input type="radio" name="upload_type" value="url-standard" <# STANDARD_UPLOAD_YES #> /> 
         <input type="radio" name="upload_type" value="ulfy_boxed" <# BOXED_UPLOAD_YES #> />
      </div>
      <div id="uploader" class="col-lg-12 pull-left">
        <select id="sel" class="form-control" name="url_upload_type" onchange="set_upload_type(this);" >
        	<option value="normal_upload">آپلود آدرس مستقیم تصویر</option>
        	<option value="paste_upload">آپلود فهرست آدرس های تصاویر</option>
        	<option value="webpage_upload">ربایش تصاویر موجود در یک آدرس</option>
        </select>
<br />
		<div id="upload_types" dir="ltr">
        	<div id="normal_upload">
                <input name="userfile[]" type="text" class="form-control cb-ltr" placeholder="http://" />
            </div>
            
            <div id="webpage_upload" style="display: none;" dir="ltr">
                <input name="webpage_upload" type="text" class="form-control cb-ltr" placeholder="http://" onclick="$(this).val('');" />
                <br />
                <span class="rr" dir="rtl">با کمک این ابزار تمام تصاویر در یک صفحه وب را یکجا آپلود نمائید.</span>
            </div>
            
            <div id="paste_upload" style="display: none;" dir="ltr">
           		<textarea name="paste_upload" cols="60" rows="10" class="form-control cb-ltr" placeholder="http://
http://
http://
"></textarea>
                <br /><br />
            </div>
        </div>

      </div>
      <div class="col-lg-12 pull-left">
      <br />
         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ucopyr" href="#ucopyr">
               <i class="fa fa-copyright fa-fw"></i>
                     انتخاب حق نشر
                  </a>
               </h4>
            </div>
           <div id="ucopyr" class="panel-body collapse">
              <label for="private_upload_0" class="unselectable po">
              <input type="radio" name="private_upload"  id="private_upload_0" value="0" checked="checked" /> عمومی
             <br /> 
             <span class="small dgreen">
              اجازه انتشار تصویر(ها) را به عموم می دهم.
             </span>
              </label>
                                  <br /><br /><label for="private_upload_1" class="unselectable po">
              <input type="radio" name="private_upload" id="private_upload_1" value="1" /> خصوصی
               <br />
             <span class="small dorange">
               فقط خودم مجاز به انتشار لینک تصویر (ها) هستم.
             </span>
               </label>
           </div>
         </div>

         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ualbum" href="#ualbum">
                  <i class="fa fa-cogs fa-fw"></i>
                     تنظیمات بیشتر
                  </a>
               </h4>
            </div>
           <div id="ualbum" class="panel-body collapse">
<if="$mmhclass->info->is_user == true">
           <i class="fa fa-folder fa-fw"></i>
           محل ذخیره تصویر (ها)
               <select name="upload_to" class="r_rc sel">
                  <option value="0" selected="selected">تصاویر من</option>
                  <option disabled="disabled"> . </option>
      <while id="albums_pulldown_whileloop">
                  <option value="<# ALBUM_ID #>">  <# ALBUM_NAME #></option>
      </endwhile>
               </select>
               <br />
               <i class="fa fa-arrows-alt fa-fw"></i>
               تغییر ابعاد تصویر (ها)
               <select name="image_resize" class="r_rc sel">
                  <option value="0" selected="selected">تغییر داده نشود  </option>
                  <option disabled="disabled"> . </option>
                  <option value="1" >  100 × 75 » آواتار  </option>
                  <option value="2" >  150 × 112 » بند انگشتی  </option>
                  <option value="3" >  320 × 240 » مناسب ایمیل  </option>
                  <option value="4" >  640 × 480 » مناسب انجمن  </option>
                  <option disabled="disabled"> . </option>
                  <option value="5" >  800 × 600 » زمینه نمایشگر 15 اینچ  </option>
                  <option value="6" >  1024 × 768 » زمینه نمایشگر 17 اینچ  </option>
                  <option value="7" >  1280 × 1024 » زمینه نمایشگر 19 اینچ  </option>
                  <option value="8" >  1600 × 1200 » زمینه نمایشگر 21 اینچ  </option>
               </select>
<else>
         <div class="col-lg-12 text-right">
<span style="font-weight: 700; color: #FF0000">»</span> تغییر ابعاد، ضمن آپلود عکس (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> ویرایش آنلاین تصایر پس از آپلود (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> ایجاد گالری شخصی (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> تعریف نامحدود آلبوم در گالری شخصی (فقط اعضا)
<br /><br />
<a href="عضویت-در-سایت" class="btn btn-success btn-block" style="color:fff;">عضویت رایگان در سایت</a>
         </div>   
</endif>
            </div>
         </div>
      </div>
      <div class="col-lg-2">
      </div>
      <div class="col-lg-8 text-center">
         <button type="submit" class="btn btn-info btn-block btn-lg"><i class="fa fa-cloud-upload fa-fw"></i> ارسال تصویر (ها)</button>
      </div>
      <div class="col-lg-2">
      </div>
   </form>
      </div>
</template>
<!-- END: URL UPLOAD PAGE -->

<!-- BEGIN: UPLOADER PROGRESS BAR LIGHTBOX -->
<template id="upload_in_progress_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>لطفا صبر کنید</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center">
            در حال ثبت نهایی
            <br /><br />
            <img src="css/images/progress_bar.gif" alt="Loading..." style="height: 40px;" />
            <br /><br />
           تصاویر شما بارگزاری شده و در حال ثبت می باشند.
        </td>
	</tr>
	<tr>
		<td class="table_footer">&nbsp;</td>
	</tr>
</table>

</template>
<!-- END: UPLOADER PROGRESS BAR LIGHTBOX -->

<!-- BEGIN: UPLOAD LAYOUT PREVIEW LIGHTBOX -->
<template id="upload_layout_preview_lightbox">

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
	<tr>
		<th>Upload Layout Preview</th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center" height="<# IMAGE_HEIGHT #>px;">
			<a href="css/images/<# PREVIEW_TYPE #>layout_prev.jpg"><img src="css/images/<# PREVIEW_TYPE #>layout_prev.jpg" alt="Upload Layout Preview" /></a>
        </td>
	</tr>
	<tr>
		<td class="table_footer"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

</template>
<!-- END: UPLOAD LAYOUT PREVIEW LIGHTBOX -->
<!-- BEGIN: ZIP UPLOAD PAGE -->

<template id="zip_upload_page">
 <div class="col-lg-4 pull-right">
      <div  class="text-right">
         <i class="fa fa-info-circle fa-fw"></i> پسوندهای مجاز:
         <kbd class="bg-lgreen">jpeg</kbd>
         <kbd class="bg-lgreen">jpg</kbd>
         <kbd class="bg-lgreen">gif</kbd>
         <kbd class="bg-lgreen">png</kbd>
         <kbd class="bg-lgreen">bmp</kbd>
         <kbd class="bg-lgreen">ico</kbd>
         <br /><br />
         <i class="fa fa-info-circle fa-fw"></i> کاربر مهمان:
         5 فایل همزمان حداکثر حجم هر فایل 4 مگابایت
         <br /><br />
         <i class="fa fa-info-circle fa-fw"></i> اعضا:
         30 فایل همزمان حداکثر حجم هر فایل 10 مگابایت
      </div>
      </div>
      <div class="col-lg-5 pull-right">


    <form action="upload.php" method="post" id="upload_form" enctype="multipart/form-data">
      <div class="hhh">
         <input type="hidden" name="session" value="<# RAND_SES_VAR #>" />
         <input type="radio" name="upload_type" value="zip_standard" <# STANDARD_UPLOAD_YES #> /> 
         <input type="radio" name="upload_type" value="zip-boxed" <# BOXED_UPLOAD_YES #> />
      </div>
      <div id="uploader" class="col-lg-12 pull-left">
						
        <div class="text-justify">
            ابتدا تصاویر مورد نظر را به صورت فایل Zip در آورید، سپس فایل را در اینجا ارسال کنید:<br /> <br />
        </div>
        
<if="$mmhclass->info->is_user == false">
        <div class="text-center">
            <kbd class="bg-dorange">شما وارد سایت نشده اید!</kbd>
            این ابزار ویژه اعضای سایت می باشد.
        </div>
<else>
        <input class="form-control cb-ltr" name="userfile" type="file" size="50" />
</endif>

      </div>
      <div class="col-lg-12 pull-left">
      <br />
         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ucopyr" href="#ucopyr">
               <i class="fa fa-copyright fa-fw"></i>
                     انتخاب حق نشر
                  </a>
               </h4>
            </div>
           <div id="ucopyr" class="panel-body collapse">
              <label for="private_upload_0" class="unselectable po">
              <input type="radio" name="private_upload"  id="private_upload_0" value="0" checked="checked" /> عمومی
             <br /> 
             <span class="small dgreen">
              اجازه انتشار تصویر(ها) را به عموم می دهم.
             </span>
              </label>
                                  <br /><br /><label for="private_upload_1" class="unselectable po">
              <input type="radio" name="private_upload" id="private_upload_1" value="1" /> خصوصی
               <br />
             <span class="small dorange">
               فقط خودم مجاز به انتشار لینک تصویر (ها) هستم.
             </span>
               </label>
           </div>
         </div>

         <div class="panel panel-default text-right">
            <div class="panel-heading">
               <h4 class="panel-title">
                  <a class="collapsed" data-toggle="collapse" data-parent="#ualbum" href="#ualbum">
                  <i class="fa fa-cogs fa-fw"></i>
                     تنظیمات بیشتر
                  </a>
               </h4>
            </div>
           <div id="ualbum" class="panel-body collapse">
<if="$mmhclass->info->is_user == true">
           <i class="fa fa-folder fa-fw"></i>
           محل ذخیره تصویر (ها)
               <select name="upload_to" class="r_rc sel">
                  <option value="0" selected="selected">تصاویر من</option>
                  <option disabled="disabled"> . </option>
      <while id="albums_pulldown_whileloop">
                  <option value="<# ALBUM_ID #>">  <# ALBUM_NAME #></option>
      </endwhile>
               </select>
               <br />
               <i class="fa fa-arrows-alt fa-fw"></i>
               تغییر ابعاد تصویر (ها)
               <select name="image_resize" class="r_rc sel">
                  <option value="0" selected="selected">تغییر داده نشود  </option>
                  <option disabled="disabled"> . </option>
                  <option value="1" >  100 × 75 » آواتار  </option>
                  <option value="2" >  150 × 112 » بند انگشتی  </option>
                  <option value="3" >  320 × 240 » مناسب ایمیل  </option>
                  <option value="4" >  640 × 480 » مناسب انجمن  </option>
                  <option disabled="disabled"> . </option>
                  <option value="5" >  800 × 600 » زمینه نمایشگر 15 اینچ  </option>
                  <option value="6" >  1024 × 768 » زمینه نمایشگر 17 اینچ  </option>
                  <option value="7" >  1280 × 1024 » زمینه نمایشگر 19 اینچ  </option>
                  <option value="8" >  1600 × 1200 » زمینه نمایشگر 21 اینچ  </option>
               </select>
<else>
         <div class="col-lg-12 text-right">
<span style="font-weight: 700; color: #FF0000">»</span> تغییر ابعاد، ضمن آپلود عکس (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> ویرایش آنلاین تصایر پس از آپلود (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> ایجاد گالری شخصی (فقط اعضا)
<br /><br />
<span style="font-weight: 700; color: #FF0000">»</span> تعریف نامحدود آلبوم در گالری شخصی (فقط اعضا)
<br /><br />
<a href="عضویت-در-سایت" class="btn btn-success btn-block" style="color:fff;">عضویت رایگان در سایت</a>
         </div>   
</endif>
            </div>
         </div>

      </div>
      <div class="col-lg-2">
      </div>
      <div class="col-lg-8 text-center">
         <button type="submit" class="btn btn-info btn-block btn-lg"><i class="fa fa-cloud-upload fa-fw"></i> ارسال تصویر (ها)</button>
      </div>
      <div class="col-lg-2">
      </div>
   </form>
      </div>
</template>

<!-- END: ZIP UPLOAD PAGE -->
