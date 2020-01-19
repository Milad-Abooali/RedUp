<!-- BEGIN: MAIN VIEWER PAGE -->
<div class="col-sm-9">
    <if="$mmhclass->info->is_admin == true">
        <div class="col-sm-12 text-right">
                <a title="حذف تصویر"target="_blank" data-placement="top" class="btn btn-default btn-xs btn-danger" style="color:#000;"
                href="admin.php?act=delete_files-d&d=1&files=<# FILENAME #>"><i class="fa fa-fw fa-remove"></i> حذف</a></font>
                &nbsp;
                <a title="پنهان از گالری" data-placement="top" class="btn btn-default btn-xs btn-warning" style="color:#000;"
                href="remods.php?d=<# FILE_ID #>&p=<# PGAM #>"><i class="fa fa-fw fa-eye-slash"></i> خصوصی</a><br /><br />
        </div>
    </endif>
    <div class="col-sm-5 pull-left text-left">
        <a data-placement="bottom"title="اشتراک در LinkedIn" href="https://www.linkedin.com/shareArticle?mini=true&url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>&title=<# FILENAME #>&summary=http://redup.ir/"target="_blank"rel="nofollow"><span class="light2 social linkedin"></span></a>
        <a data-placement="bottom"title="اشتراک در Pinterest" href="https://pinterest.com/pin/create/button/?url=http://redup.ir/viewer/<# FILENAME #>&media=http://redup.ir/img/<# FILENAME #>&title=<# FILENAME #>&description=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social pinterest"></span></a>
        <a data-placement="bottom"title="اشتراک در Twitter" href="https://twitter.com/home?status=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social twitter"></span></a>
        <a data-placement="bottom"title="اشتراک در Google+" href="https://plus.google.com/share?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social google"></span></a>
        <a data-placement="bottom"title="اشتراک در Facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://redup.ir/viewer/<# FILENAME #>&title=<# REAL_FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social facebook"></span></a>
        <a data-placement="bottom"title="اشتراک در کلوب" href="http://www.cloob.com/share/link/add?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social cloob"></span></a>
        <a data-placement="bottom"title="اشتراک در فیس نما" href="http://facenama.com/links/?url=http://redup.ir/viewer/<# FILENAME #>&title=<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social facenama"></span></a>
        <a data-placement="bottom"title="اشتراک در افسران" href="http://www.afsaran.ir/link/share?from=out&id=0&title=<# FILENAME #>&url=http://redup.ir/viewer/<# FILENAME #>"target="_blank"rel="nofollow"><span class="light2 social afsaran"></span></a>
    </div>

    <div class="col-sm-7 pull-right text-right">
        <a title="کدها و لینک های تصویر" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;"
        href="links/<# FILENAME #>"><i class="fa fa-fw fa-code"></i> لینک تصویر</a>
        <a title="دانلود تصویر" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;" 
        href="download/<# FILENAME #>"><i class="fa fa-fw fa-download"></i>  دریافت اورجینال</a>
        <a title="درخواست حذف" data-placement="bottom" class="btn btn-default btn-sm" style="color:#000;" 
        href="contact.php?act=file_report&file=<# FILENAME #>"><i class="red fa fa-fw fa-warning"></i> گزارش تخلف</a>
        <a title="کد QR" data-placement="bottom" class="hhh btn btn-default btn-sm" style="color:#000;" 
        href="contact.php?act=file_report&file=<# FILENAME #>"><i class="fa fa-fw fa-qrcode"></i> کد QR</a>
        <a title="نمایش یک تصویر تصادفی" data-placement="bottom"href="random" class="btn btn-default btn-sm" style="color:#000;"><i class="fa fa-fw fa-random"></i> تصویر تصادفی</a>

    </div>
    <div class="col-sm-12 text-right">
        <br />
        <span id="timer"></span>
        <span class="pull-left">
        <a title="تبدیل پسوند به PNG" data-placement="bottom" class="btn btn-default btn-xs" style="color:#000;" href="convert-to-png/<# FILENAME #>">
        PNG <i class="dgreen fa fa-fw fa-download"></i></a>
        <a title="تبدیل پسوند به JPG" data-placement="bottom" class="btn btn-default btn-xs" style="color:#000;" href="convert-to-jpg/<# FILENAME #>">
        JPG <i class="dgreen fa fa-fw fa-download"></i></a>
        <a title="تبدیل پسوند به GIF" data-placement="bottom" class="btn btn-default btn-xs" style="color:#000;" href="convert-to-gif/<# FILENAME #>">
        GIF <i class="dgreen fa fa-fw fa-download"></i></a>
        <a title="تبدیل پسوند به BMP" data-placement="bottom" class="btn btn-default btn-xs" style="color:#000;" href="convert-to-bmp/<# FILENAME #>">
        BMP <i class="dgreen fa fa-fw fa-download"></i></a>
        <a title="تولید آیکن" data-placement="bottom" class="btn btn-default btn-xs" style="color:#000;" href="generate-icon/<# FILENAME #>">
        Icon <i class="blue fa fa-fw fa-firefox"></i></a>
        </span>
    </div>
    <div class="col-sm-12 text-center">
            <a href="img/<# FILENAME #>" target="_blank">
                <img src="img/<# FILENAME #>" alt="<# REAL_FILENAME #>" onload="countDown();" class="vimg" />
            </a>
    </div>
    <div class="col-sm-12 right">
        <div class="panel panel-info">
          <div class="panel-heading light2" data-toggle="collapse" data-target="#vimginfo">مشاهده مشخصات تصویر - <# FILE_TITLE #></div>
          <div id="vimginfo" class="panel-body collapse text-right">
            <div class="pull-right col-sm-5">
                <small>عنوان فایل:</small> <# FILE_TITLE #> <br /><br />
                <small>نام فایل:</small> <# REAL_FILENAME #> <br /><br />
                <small>عرض تصویر:</small> <# IMAGE_HEIGHT #> پیکسل <br /><br />
                <small>ارتفاع تصویر:</small> <# IMAGE_WIDTH #> پیکسل <br /><br />
                <small>پسوند تصویر:</small> <a href="http://www.fileinfo.com/extension/<# FILE_EXTENSION #>"><# MIME_TYPE #></a><br /><br />
            </div><div class="pull-left col-sm-5">
                <small>بازدید:</small> <# VIEWER_CLICKS #> بار <br /><br />
                <small>بازدیدکنندگان:</small> <# IMAGE_VIEWS #> نفر <br /><br />
                <small>حجم فایل:</small><span class="cb-ltr pull-left"> <# TOTAL_FILESIZE #> </span><br /><br />
                <small>تاریخ ثبت فایل:</small><span class="cb-ltr pull-left"> <# DATE_UPLOADED #> </span><br /><br />
            </div>
          </div>
        </div>
    </div>
</div>

<!-- END: MAIN VIEWER PAGE -->