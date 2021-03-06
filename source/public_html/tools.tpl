<!-- BEGIN: IFRAME UPLOADER -->
<template id="iframe_uploader">

<style type="text/css">
	#uploader_iframe { margin: 0; padding: 0; font-size: 12px; background-color: transparent; font-family: Arial, Verdana, Helvetica, sans-serif; }
	#uploader_iframe a:link, #uploader_iframe a:visited { color: #005fa9; text-decoration: none; }
	#uploader_iframe a:hover { text-decoration: underline; }
</style>

<span id="uploader_iframe">
    <form action="<# BASE_URL #>upload19.php" target="_blank" method="post" enctype="multipart/form-data">
        <if="$mmhclass->templ->templ_globals['upload_type'] == 'url'">
            <input type="text" name="userfile[]" style="width: 220px;" value="Enter image URL to upload." onclick="$(this).val('');" />
            <input type="hidden" name="upload_type" value="url-standard" />
            <input type="submit" value="Upload"> - <a href="javascript:void(0);" onclick="$('#iframe_uploader').html(get_ajax_content('<# BASE_URL #>index.php?module=iframeupload'));">بارگذاري از رايانه</a>
        <else> 
            <input type="file" name="userfile[]" size="27" /> 
            <input type="hidden" name="upload_type" value="standard" />
            <input type="submit" value="ارسال عکس">
        </endif>
    </form>
</span>

</template>
<!-- END: IFRAME UPLOADER -->

<!-- BEGIN: TOOLS PAGE -->
<template id="tools_page">
The  iFrame Uploader is a simple tool that can be embeded into any blog, forum, or website to make uploading
directly to <# SITE_NAME #> fast and easy. The uploader intergrates into any website so you do not have to browse to <# SITE_NAME #>
to upload an image.
<br /><br />
<strong>پيش نمايش:</strong> <span id="iframe_uploader"></span><script type="text/javascript">$('#iframe_uploader').html(get_ajax_content("<# BASE_URL #>index.php?module=iframeupload"));</script>
<br /><br />
<strong>کد مرجع</strong>:<br />
<textarea cols="90" rows="8" onclick="highlight(this);" readonly="readonly" class="input_field">
&lt;iframe allowtransparency=&quot;yes&quot; frameborder=&quot;0&quot; scrolling=&quot;no&quot; src=&quot;<# BASE_URL #>index.php?module=iframeupload&quot; style=&quot;height: 40px; width: 500px;&quot;&gt;Your browser does not support iframes.&lt;/iframe&gt;
</textarea>

</template>
<!-- END: TOOLS PAGE -->