<!-- BEGIN: GLOBAL GALLERY CELL -->

<template id="global_gallery_layout">

<div class="col-lg-3 rrrrG text-center" style="padding:15px;">

    <div>
        <a title="اطلاعات تصویر" data-placement="top" class="btn btn-default btn-sm" style="color:#000;"
        href="viewer/<# FILENAME #>"><i class="fa fa-fw fa-info-circle"></i></a>&nbsp;
        <a title="دانلود تصویر" data-placement="top" class="btn btn-default btn-sm" style="color:#000;" 
        href="download/<# FILENAME #>"><i class="fa fa-fw fa-download"></i></a>&nbsp;
        <a title="درخواست حذف" data-placement="top" class="btn btn-default btn-sm" style="color:#000;" 
        href="contact.php?act=file_report&file=<# FILENAME #>"><i class="fa fa-fw fa-warning"></i></a>&nbsp;
        <if="$mmhclass->templ->templ_globals['file_options'] == true">
            <a title="ویرایش آنلاین تصویر" data-placement="top" class="btn btn-default btn-sm" style="color:#000;" 
            href="edit/<# FILE_ID #>"><i class="fa fa-fw fa-paint-brush"></i></a>
        </endif>
    </div>
    <div>
        <a href="viewer/<# FILENAME #>">
        <img class="rrrr2 galimg" src="<# THUMBNAIL #>" alt="<# FILENAME #>" id="<# FILENAME #>"/>
        </a>
        <if="$mmhclass->templ->templ_globals['file_options'] == true">
            <input type="checkbox" name="userfile" value="<# FILENAME #>" class="galimgsel" />
        </endif>
    </div>

    <div>
        <a title="تبدیل پسوند" data-placement="top" class="btn-xs" style="color:#000;"
        data-content="
<a href='convert-to-png/<# FILENAME #>'>PNG</a><br />
<a href='convert-to-jpg/<# FILENAME #>'>JPG</a><br />
<a href='convert-to-gif/<# FILENAME #>'>GIF</a><br />
<a href='convert-to-bmp/<# FILENAME #>'>BMP</a><br />
        " data-toggle="popover" data-html="true" >
        <i class="dgreen fa fa-fw fa-transgender-alt"></i></a>&nbsp;
        <a title="تغییر ابعاد" data-placement="bottom" class="ModalResizer" style="color:#000;"
        data-toggle="modal" href="#Modal" data-file="<# FILENAME #>">
        <i class="dblue fa fa-fw fa-object-group"></i> </a>&nbsp;
        <a title="بهینه سازی تصویر" data-placement="bottom" class="ModalOptimize" style="color:#000;"
        data-toggle="modal" href="#Modal" data-file="<# FILENAME #>">
        <i class="magenta fa fa-fw fa-flask"></i> </a>&nbsp;
        <a title="تولید آیکن" data-placement="bottom" class="btn-xs" style="color:#000;"
        href="generate-icon/<# FILENAME #>">
        <i class="blue fa fa-fw fa-firefox"></i> </a>&nbsp;
        <a title="تولید Base64" data-placement="bottom" class="ModalBS64" style="color:#000;"
        data-toggle="modal" href="#Modal" data-file="<# FILENAME #>">
        <i class="purple fa fa-fw fa-file-code-o"></i> </a>

    </div>
   
<if="$mmhclass->info->is_admin == true">
    <div>
            <a title="حذف تصویر"target="_blank" data-placement="right" class="btn btn-default btn-xs btn-danger" style="color:#000;"
            href="be.php?act=delete_files-d&d=1&files=<# FILENAME #>"><i class="fa fa-fw fa-remove"></i> حذف</a></font>
            &nbsp;
            <a title="پنهان از گالری" data-placement="left" class="btn btn-default btn-xs btn-warning" style="color:#000;"
            href="exdo.php?a=MakePrivate&i=<# FILE_ID #>&bp=<# PGAM #>"><i class="fa fa-fw fa-eye-slash"></i> خصوصی</a>
    </div><br />
</endif>

<if="$mmhclass->templ->templ_globals['file_options'] == true">
    <div>
            <input type="text" id="<# FILE_ID #>_title_rename" maxlength="25" style="display: none;" 
            class="cb-ltr form-control title_rename" onblur="gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');" 
            onkeydown="if(event.keyCode==13){gallery_action('rename-d', '<# FILENAME #>', '<# FILE_ID #>');}" />
            <div title="جهت تغییر عنوان کلیک کنید" id="<# FILE_ID #>_title" onclick="gallery_action('rename', this.id);" 
            class="galimgtitl <# FILE_ID #>_title_rename"><# FILE_TITLE #></div>
    </div>
</endif>

</div>

</template>

<!-- END: GLOBAL GALLERY CELL -->



<!-- BEGIN: GLOBAL MESSAGE BOX -->

<template id="global_message_box">

	

<div class="col-lg-9 pull-right message_box"><br />

	<# MESSAGE #>

</div>



</template>

<!-- END: GLOBAL MESSAGE BOX -->



<!-- BEGIN: GLOBAL WARNING BOX -->

<template id="global_warning_box">



<div class="col-lg-9 pull-right message_box">

	<h1>خطا</h1><br />

	<# ERROR #>

<br /><br /><br />
<small class="lpurple">شماره خطا: G002</small>

</div>



</template>

<!-- END: GLOBAL WARNING BOX -->



<!-- BEGIN: GLOBAL LIGHTBOX WARNING BOX -->

<template id="global_lightbox_warning">



<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">

	<tr>

		<th>&nbsp;</th>

	</tr>

	<tr>

		<td class="message_box">

        	<h1>خطا/h1><br />

          	<# ERROR #>
<br /><br /><br />
<small  class="lpurple">شماره خطا: L003</small>
		</td>

	</tr>

	<tr>

		<td class="table_footer"><a onclick="$('div[class=lightbox_main]').parent().remove();">بازگشت</a></td>

	</tr>

</table>



</template>

<!-- END: GLOBAL LIGHTBOX WARNING BOX -->