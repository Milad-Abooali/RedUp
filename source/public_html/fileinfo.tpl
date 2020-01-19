<!-- BEGIN: FILE INFO LIGHTBOX -->

<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;"dir="rtl"class="rr">
	<tr>
		<th colspan="2">اطلاعات تصویر  <# REAL_FILENAME #></th>
	</tr>
	<tr>
		<td class="tdrow1 text_align_center" colspan="2" height="<# THUMBNAIL_HEIGHT #>px;">
		<if="$mmhclass->info->config['seo_urls'] == '0'">
        	<a href="img.php?image=<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook, y = 150"><img class="r_rc"src="index.php?module=thumbnail&amp;file=<# FILENAME #>" alt="<# FILENAME #> Thumbnail" /></a>
		<else>
		<a href="<# FILENAME #>" class="top_up" toptions="effect = clip, shaded = 1, layout = flatlook, y = 150"><img class="r_rc" src="thumb.<# FILENAME #>" alt="<# FILENAME #> Thumbnail" /></a>
		</endif>
        </td>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">عنوان تصویر:</span></td>
		<if="$mmhclass->info->config['seo_urls'] == '0'">
		<td class="tdrow2"><a href="viewer.php?file=<# FILENAME #>"><# REAL_FILENAME #></a></td>
		<else>
		<td class="tdrow2"><a href="<# FILENAME #>.html"><# REAL_FILENAME #></a></td>
		</endif>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">عرض:</span></td>
		<td class="tdrow2"><# IMAGE_WIDTH #>  پیکسل</td>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">ارتفاع:</span></td>
		<td class="tdrow2"><# IMAGE_HEIGHT #> پیکسل</td>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">قالب تصویر:</span></td>
		<td class="tdrow2"><a href="http://www.fileinfo.com/extension/<# FILE_EXTENSION #>" target="_new"><# MIME_TYPE #></a></td>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">تاریخ ارسال:</span></td>
		<td class="tdrow2"><# DATE_UPLOADED #></td>
	</tr>
	<tr>
		<td style="width: 44%;" class="tdrow1"><span class="arial">حجم فایل:</span></td>
		<td class="tdrow2"><# TOTAL_FILESIZE #></td>
	</tr>
	<if="$mmhclass->info->config['seo_urls'] == '0'">
	<if="$mmhclass->info->config['hotlink'] == '1'">
    <tr>
           <td style="width: 44%;" class="tdrow1"><span class="arial">پیوند مستقیم به تصویر:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="<# BASE_URL #>img.php?image=<# FILENAME #>" /></td>
       </tr>
       </endif>
       <tr>
          <td style="width: 44%;" class="tdrow1"><span class="arial">نمایه ویژه سایت - HTML:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="&lt;a href=&quot;<# BASE_URL #>viewer.php?file=<# FILENAME #>&quot;&gt;&lt;img src=&quot;<# BASE_URL #>img.php?image=<# FILENAME #>&mode=thumb&quot; border=&quot;0&quot; alt=&quot;<# FILENAME #>&quot; /&gt;&lt;/a&gt;" /></td>
       </tr>
       <tr>
          <td style="width: 44%;" class="tdrow1"><span class="arial">نمایه ویژه انجمن - BBCod:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="[URL=<# BASE_URL #>viewer.php?file=<# FILENAME #>][IMG]<# BASE_URL #>img.php?image=<# FILENAME #>&mode=thumb[/IMG][/URL]" /></td>
       </tr>
	<else>
	<if="$mmhclass->info->config['hotlink'] == '1'">
	   <tr>
           <td style="width: 44%;" class="tdrow1"><span class="arial">پیوند مستقیم به تصویر:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="<# BASE_URL #><# FILENAME #>" /></td>
       </tr>
       </endif>
       <tr>
          <td style="width: 44%;" class="tdrow1"><span class="arial">نمایه ویژه سایت - HTML:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="&lt;a href=&quot;<# BASE_URL #><# FILENAME #>.html&quot;&gt;&lt;img src=&quot;<# BASE_URL #>thumb.<# FILENAME #>&quot; border=&quot;0&quot; alt=&quot;<# FILENAME #>&quot; /&gt;&lt;/a&gt;" /></td>
       </tr>
       <tr>
          <td style="width: 44%;" class="tdrow1"><span class="arial">پیوند مستقیم به تصویر:</span></td>
          <td><input readonly="readonly" class="input_field" onclick="highlight(this);" type="text" style="width: 200px;" value="[URL=<# BASE_URL #><# FILENAME #>.html][IMG]<# BASE_URL #>thumb.<# FILENAME #>[/IMG][/URL]" /></td>
       </tr>
       </endif>
  <tr>
      <if="$mmhclass->info->is_admin == true && $mmhclass->info->config['proxy_images'] == true">
        <tr>
            <td style="width: 44%;" class="tdrow1"><span class="arial">Bandwidth Usage:</span></td>
            <td class="tdrow2"><# BANDWIDTH_USAGE_FORMATTED #></td>
        </tr>
    </endif>
	<tr>
		<td colspan="2" > </td>
	</tr>
	<tr>
		<td colspan="2" class="table_footer"style="cursor: pointer;"><a onclick="toggle_lightbox('no_url', '<# LIGHTBOX_ID #>');">بازگشت</a></td>
	</tr>
</table>

<!-- END: FILE INFO LIGHTBOX -->