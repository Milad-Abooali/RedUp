 <!-- BEGIN: FILE RESULTS TABLE -->
<template id="standard_file_results">
<div class="col-lg-9 pull-right">
<div class="col-lg-3 text-center cb-rtl">
    <if="$mmhclass->info->is_user == false">
    <a class="btn btn-success btn-sm" style="color:#fff;" href="عضویت-در-سایت">عضویت در سایت</a>
    <br />
    </endif>
    <br />
    <a href="viewer/<# FILENAME #>"><img  class = "r_rc light"src="<# THUMBNAIL #>"alt="<# FILENAME #>" <# THUMBNAIL_SIZE #> /></a>
    <br /><br />
    &nbsp;
    <a title="اطلاعات تصویر" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;"
    href="viewer/<# FILENAME #>"><i class="fa fa-fw fa-info-circle"></i></a>
    <a title="دانلود تصویر" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;" 
    href="download/<# FILENAME #>"><i class="fa fa-fw fa-download"></i></a>
    <a title="درخواست حذف" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;" 
    href="contact.php?act=file_report&file=<# FILENAME #>"><i class="fa fa-fw fa-warning"></i></a>
    <a title="کد QR" data-placement="bottom" class="hhh btn btn-default btn-sm" style="color:#000;" 
    href="contact.php?act=file_report&file=<# FILENAME #>"><i class="fa fa-fw fa-qrcode"></i></a>
    &nbsp;

    <br /><br />

        <a data-placement="bottom"title="اشتراک در LinkedIn" href="https://www.linkedin.com/shareArticle?mini=true&url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>&title=<# FILENAME #>&summary=http://redup.ir/"target="_blank"rel="nofollow"><span class="light2 social linkedin"></span></a>
        <a data-placement="bottom"title="اشتراک در Pinterest" href="https://pinterest.com/pin/create/button/?url=http://redup.ir/viewer/<# FILENAME #>&media=http://redup.ir/img/<# FILENAME #>&title=<# FILENAME #>&description=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social pinterest"></span></a>
        <a data-placement="bottom"title="اشتراک در Twitter" href="https://twitter.com/home?status=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social twitter"></span></a>
        <a data-placement="bottom"title="اشتراک در Google+" href="https://plus.google.com/share?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social google"></span></a>
        <a data-placement="bottom"title="اشتراک در Facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://redup.ir/viewer/<# FILENAME #>&title=<# REAL_FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social facebook"></span></a>
        <br />
        <a data-placement="bottom"title="اشتراک در کلوب" href="http://www.cloob.com/share/link/add?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social cloob"></span></a>
        <a data-placement="bottom"title="اشتراک در فیس نما" href="http://facenama.com/links/?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social facenama"></span></a>
        <a data-placement="bottom"title="اشتراک در افسران" href="http://www.afsaran.ir/link/share?from=out&id=0&title=<# FILENAME #>&url=http://redup.ir/viewer/<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social afsaran"></span></a>
</div>
<div class="col-lg-9">
    <script type="text/javascript" src="source/includes/scripts/links.js" charset="UTF-8"></script>
    <div id="dlink" class="block">
        <div class="col-lg-12 text-right">
            <h4>لینک های مستقیم تصویر</h4>
            <kbd class="timg hhh bg-blue pull-left lblue"></kbd>
            <br /><br />
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small"><# BASE_URL #>img.php?image=<# FILENAME #></span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="<# BASE_URL #>img.php?image=<# FILENAME #>">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> لینک تصویر کامل </span>
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small"><# BASE_URL #>img.php?image=<# FILENAME #></span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="<# BASE_URL #>thumb/<# FILENAME #>">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> لینک نمایه تصویر </span>
        </div>
        <div class="col-lg-12 text-right">
            <br />
            <h4>کد HTML</h4>
            <kbd class="timg hhh bg-blue pull-left lblue"></kbd>
            <br /><br />
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">&lt;a href=&quot;<# BASE_URL #>&quot;&gt;&lt;img src=&quot;<# BASE_URL #>img.php?image=<# FILENAME #>&quot; border=&quot;0&quot; alt=&quot;<# SITE_NAME #>&quot; /&gt;&lt;/a&gt;</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="<a href='<# BASE_URL #>viewer/<# FILENAME #>' title='<# SITE_NAME #>'><img src='<# BASE_URL #>img.php?image=<# FILENAME #>' alt='<# FILENAME #>' /></a>">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> تصویر کامل </span>
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">&lt;a href=&quot;<# BASE_URL #>&quot;&gt;&lt;img src=&quot;<# BASE_URL #>img.php?image=<# FILENAME #>&quot; border=&quot;0&quot; alt=&quot;<# SITE_NAME #>&quot; /&gt;&lt;/a&gt;</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="<a href='<# BASE_URL #>viewer/<# FILENAME #>' title='<# SITE_NAME #>'><img src='<# THUMBNAIL #>' alt='<# FILENAME #>' /></a>">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> نمایه تصویر </span>
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">&lt;a href=&quot;<# BASE_URL #>&quot;&gt;&lt;img src=&quot;<# BASE_URL #>img.php?image=<# FILENAME #>&quot; border=&quot;0&quot; alt=&quot;<# SITE_NAME #>&quot; /&gt;&lt;/a&gt;</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="<a href='<a href='<# BASE_URL #>viewer/<# FILENAME #>' title='<# SITE_NAME #>'>نمایش تصویر <# FILENAME #></a>">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> متن + لینک </span>
        </div>
        <div class="col-lg-12 text-right">
            <br />
            <h4>کد BBCOD</h4>
            <kbd class="timg hhh bg-blue pull-left lblue"></kbd>
            <br /><br />
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">[URL=<# BASE_URL #>] [IMG]<# BASE_URL #>img.php?image=<# FILENAME #>[/IMG][/URL]</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="[URL=<# BASE_URL #>][IMG]<# BASE_URL #>img.php?image=<# FILENAME #>[/IMG][/URL]">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> تصویر کامل </span>
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">[URL=<# BASE_URL #>viewer/<# FILENAME #>] [IMG]<# THUMBNAIL #>[/IMG][/URL]</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="[URL=<# BASE_URL #>viewer/<# FILENAME #>][IMG]<# THUMBNAIL #>[/IMG][/URL]">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> نمایه تصویر </span>
        </div>
        <div class="col-lg-9">
            <span class="linkcodspan cb-ltr pull-left small">[URL=<# BASE_URL #>viewer/<# FILENAME #>] نمایش <# FILENAME #>[/URL]</span>
            <kbd class="clip_button pull-right light bg-dark lblue"
            data-clipboard-text="[URL=<# BASE_URL #>viewer/<# FILENAME #>]نمایش <# FILENAME #>[/URL]">
            <i class="fa fa-clipboard"></i> Copy</kbd>
        </div>
        <div class="col-lg-3">
            <span class="small"> متن + لینک </span>
        </div>

    </div>
</div>
    <div class="col-lg-12">
        <hr>
    </div>
</div>
</template>
<!-- END: FILE RESULTS TABLE -->
<!-- BEGIN: BOXED FILE RESULTS -->
<template id="boxed_file_results">
<div class="col-lg-9 pull-right">

[URL=<# BASE_URL #>viewer/<# FILENAME #>]نمایش <# FILENAME #>[/URL]

</div>
</template>
<!-- END: BOXED FILE RESULTS -->
<!-- BEGIN: WEBPAGE UPLOAD IMAGE SELECTION -->
<template id="webpage_upload_image_select">
<div class="col-lg-9 pull-right">
<script type="text/javascript">
	function do_select_all()
	{
		 $("input[name=userfile[]]").each(function()
		 {
			this.checked = ((this.checked == 1) ? 0 : 1);
		 });   
	}
</script><div style="height: 10px;"><span align="center" dir="rtl">
تصاویر یافت شده در صفحه وب: <a href="<# WEBPAGE_URL #>" title="<# WEBPAGE_URL #>"target="_blank"><# WEBPAGE_URL_SMALL #></a><br /><br />
لطفا مواردی که قصد دارید بارگذاری کنید را انتخاب کنید.</span></div>
<form action="upload.php"method="post"id="upload_form"enctype="multipart/form-data"><p><input type="hidden"name="upload_to"value="<# UPLOAD_TO #>" />
<input type="hidden"name="url_upload_type"value="normal_upload" /><input type="hidden"name="upload_type"value="<# UPLOAD_TYPE #>" /><input type="hidden" name="private_upload" value="<# PRIVATE_UPLOAD #>" />
<div class="table_border"><br /><br /><br /><br /><table cellpadding="4"cellspacing="1"border="0"style="width: 100%;"><tr><while id="urlupload_gallery_layout"><# TABLE_BREAK #>
<td class="<# TDCLASS #> text_align_center"valign="top"><input type="checkbox"name="userfile[]"value="<# IMAGE_URL #>"checked="checked" /><a href="<# IMAGE_URL #>"target="_blank"><strong><# FILENAME #></strong></a>
<br /><br /><a href="<# IMAGE_URL #>"target="_blank"><img  class = "glossy"src="<# IMAGE_URL #>"alt="<# FILENAME #>"style="max-width: <# MAX_WIDTH #>px;" /></a></td></endwhile></tr><tr><td colspan="4"class="table_footer">
<input type="button"value="Upload Images"class="button1"onclick="toggle_lightbox('index.php?act=upload_in_progress', 'progress_bar_lightbox'); $('form[id=upload_form]').submit();" /></td></tr></table></div></p></form>
</div>
</template>
<!-- END: WEBPAGE UPLOAD IMAGE SELECTION -->