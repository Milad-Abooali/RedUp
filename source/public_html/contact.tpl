<!-- BEGIN: CONTACT US PAGE -->
<template id="contact_us_page">
<div class="col-lg-9 pull-right text-right">
<ul>
<li>جهت گزارش تصاویر غیر مجاز از طریق فرم "<a href="contact.php?act=file_report">گزارش تخلف</a>" اقدام کنید.</li><br />
<li>جهت اطلاع در خصوص تبلیغات به بخش "<a href="http://localhost/USER_Codebox/red/info.php?act=advertisment">تبلیغات</a> مراجعه کنید.</li><br />
<li>لطفا در وارد کردن آدرس پست الکترونیک خود دقت کنید، چون تنها راه ارتباطی ما با شما خواهد بود.</li>
</ul>
<p></p>
    <form action="contact.php?act=contact_us-s" method="post">
        <div class="table_border" dir="rtl">
            <table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
                <tr>
                    <td colspan="2" class="table_footer">تماس با ما</td>
                </tr>
                <tr>
                    <td style="width: 27%;" class="tdrow1"><span>نام کامل شما:</span></td> 
                    <td class="tdrow2"align="right"><input type="text" name="username" class="form-control" value="<# USERNAME #>" /></td>
                </tr>
                <tr>
                    <td style="width: 27%;" class="tdrow1"><span>آدرس پست الکترونیک:</span></td>
                    <td class="tdrow2"align="right"><input dir="ltr"type="text" name="email_address" class="form-control" value="<# EMAIL_ADDRESS #>" /></td>
                </tr>
                <tr>
                    <td style="width: 27%;" class="tdrow1" valign="top"><span>متن پیام:</span> <br /> </td> 
                    <td class="tdrow2"align="right"><textarea class="form-control" name="message_body"></textarea></td>
                </tr>
                <tr>
                    <td style="width: 27%;" class="tdrow1" valign="top"></td> 
                    <td class="tdrow2"dir="ltr"align="right"><# CAPTCHA_CODE #></td>
                </tr>
            </table><br /><input class="btn btn-success btn-block" type="submit" value="ارسال پیام" />
        </div>
    </form>
</div>
</template>
<!-- END: CONTACT US PAGE -->

<!-- BEGIN: CONTACT US EMAIL -->
<template id="contact_us_email">
<br />
Dear <# SITE_NAME #> Administrator,
<br /><br />

The following is an email submitted from the contact form<br />
located on your website at: <# BASE_URL #><br />
-------------------------<br />
<# USERNAME #> wrote,
<br /><br />

<# EMAIL_BODY #>
<br />
</template>
<!-- END: CONTACT US EMAIL -->

<!-- BEGIN: FILE REPORT PAGE -->	
<template id="report_files_page">
<div class="col-lg-9 pull-right text-right">
    <form action="contact.php?act=file_report-s" method="post">
        <if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['file']) == false">
            <p><input type="hidden" name="filename" value="<# FILENAME #>" /></p>
        </endif>
        
        <div class="table_border" dir="rtl">
            <table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
                <tr>
                    <td colspan="2"class="table_footer">ارسال گزارش تخلف</td>
                </tr>
                <tr>
                    <td colspan="2" class="tdrow1"><strong>تذکر</strong>: این گزارش تنها موجب سنجش تصویر مورد نظر با قوانین خواهد شد و ممکن است منجر به حذف آن نشود.</td>
                </tr>
                <tr>
                    <td style="width: 30%;" class="tdrow1"><span>نام کامل شما:</span></td> 
                    <td class="tdrow2"align="right"><input type="text" name="username" class="form-control" value="<# USERNAME #>" /></td>
                </tr>
                <tr>
                    <td style="width: 27%;" class="tdrow1"><span>آدرس پست الکترونیک:</span> <br /></td> 
                    <td valign="top" class="tdrow2"align="right"><input dir="ltr"type="text" name="email_address" class="form-control" value="<# EMAIL_ADDRESS #>" /></td>
                </tr>            
                <if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['file']) == true">
                    <tr>
                        <td style="width: 30%;" class="tdrow1"><span>فایل گزارش:</span> <br /> </td>
                        <td valign="top" class="tdrow2"align="right"><input dir="ltr"type="text" name="filename" class="form-control" /></td>
                    </tr>
                </endif>
                
                <tr>
                    <td style="width: 30%;" class="tdrow1" valign="top"><span>علت گزارش:</span> <br /> </td> 
                    <td class="tdrow2"align="right">
                        <select name="report_reason" class="form-control">
                            <option value="1">تصاویر مستهجن</option>
                            <option value="2">نشر تصاویر غیر مجاز</option>
                            <option value="3">تصاویر توهین آمیز</option>
                            <option value="4">تصاویر مروج آموزش های ناپسند</option>
                            <option value="6">دیگر موارد</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%;" class="tdrow1" valign="top"> </td> 
                    <td class="tdrow2"align="right"dir="ltr"><# CAPTCHA_CODE #></td>
                </tr>
            </table><br /><input class="btn btn-success btn-block" type="submit" value="ارسال گزارش تخلف" />
        </div>
    </form>
</div>
</template>
<!-- END: FILE REPORT PAGE -->	

<!-- BEGIN: FILE REPORT EMAIL -->
<template id="report_files_email">
<br />
Dear <# SITE_NAME #> Administrator,
<br /><br />

The following is a Terms of Service violation report email automatically<br />
generated by Mihalism Multi Host. The list below shows the images that<br />
have been reported.
<br /><br />

Report By: <# USERNAME #> &lt;<# EMAIL_ADDRESS #>&gt;<br />
Report Reason: <# REPORT_REASON #><br />
Reported Images:
<br /><br />
----------------------------
<br /><br />

<while id="reported_files_whileloop">

<div style="width: 200px; text-align: center;">
<strong><a href="<# DIRECT_LINK #>"><# FILENAME #></a></strong>
<br /><br />
<img src="<# THUMBNAIL #>" alt="<# FILENAME #> Thumbnail" />
<br /><br />
( <a href="<# DIRECT_LINK #>">Full Size</a> | <a href="<# DELETE_LINK #>">Delete</a> )
</div><br />

</endwhile>

----------------------------
<br /><br />
<em>Ignoring this email will have no effect on the images presented above.</em>

</template>
<!-- END: FILE REPORT EMAIL -->