/* Rename Orginal MMH */

    $( ".title_rename" ).change(function() {
      var cbntitle = $(this).val();
      var cbrnid = $(this).attr('id');
      $("."+cbrnid).html(cbntitle);
    });

window.filename;
/* Modal Resizer */
    $('body').on('click', '.ModalResizer', function(ev){
        $(".modal-title").html('تغییر ابعاد تصویر');
        window.filename = $(this).data('file');
        var Mbody = '<div class="EX-owh text-center pull-left"><span class="EX-ow"> </span><br /><img id="imgR" class="galimg" src="index.php?module=thumbnail&file='+filename+'" alt="'+filename+'" /><span class="EX-oh"> </span><br /><small>ابعاد فایل اصلی</small></div><div class="text-right pull-right"><p>جهت تغییر ابعاد تصویر می توانید به 2 روش عمل کنید، یا از ابعاد پیش فرض انتخاب کنید، یا به صورت دستی مقادیر را وارد نمائید.<br />در تمامی گزینه ها نسبت عرض و ارتفاع تصویر اصلی خودکار محاسبه و اعمال خواهد شد.</p><br /><br /><div id="lrsdiv" class="pull-right"><a href="exdo.php?s=user&a=3&met=o2&file='+filename+'" title="50%" class="btn btn-default btn-sm IMc000">1/2 ابعاد اصلی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=o3&file='+filename+'" title="33%" class="btn btn-default btn-sm IMc000">1/3 ابعاد اصلی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=o4&file='+filename+'" class="btn btn-default btn-sm IMc000">1/4 ابعاد اصلی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=o5&file='+filename+'" class="btn btn-default btn-sm IMc000">1/5 ابعاد اصلی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=o10&file='+filename+'" class="btn btn-default btn-sm IMc000">1/10 ابعاد اصلی</a>&nbsp;<br /><br /><a href="exdo.php?s=user&a=3&met=x1&file='+filename+'" title="150%" class="btn btn-default btn-sm IMc000">1.5 برابر بزرگ نمایی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=x2&file='+filename+'" class="btn btn-default btn-sm IMc000">2 برابر بزرگ نمایی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=x3&file='+filename+'" class="btn btn-default btn-sm IMc000">3 برابر بزرگ نمایی</a>&nbsp;<a href="exdo.php?s=user&a=3&met=x5&file='+filename+'" class="btn btn-default btn-sm IMc000">5 برابر بزرگ نمایی</a>&nbsp;<br /><br /><a href="exdo.php?s=user&a=3&met=w125&file='+filename+'" title="125x" class="btn btn-default btn-sm IMc000">عرض ثابت 125 پیکسل</a>&nbsp;<a href="exdo.php?s=user&a=3&met=w250&file='+filename+'" title="250x" class="btn btn-default btn-sm IMc000">عرض ثابت 250 پیکسل</a>&nbsp;<a href="exdo.php?s=user&a=3&met=w500&file='+filename+'" title="500x" class="btn btn-default btn-sm IMc000">عرض ثابت 500 پیکسل</a>&nbsp;<a href="exdo.php?s=user&a=3&met=w600&file='+filename+'" title="650x" class="btn btn-default btn-sm IMc000">عرض ثابت 650 پیکسل</a>&nbsp;<br /><br /><input type="text" name="cwidth" data-placement="bottom" id="cwidth" maxlength="5"placeholder="عرض دلخواه به پیکسل" class="form-control" />&nbsp;<a id="docnet" href="" class="btn btn-success IMcfff">تغییر ابعاد</a><br /><br /></div></div>';
        $(".modal-body").html(Mbody);

        var imgSrc = 'http://redup.ir/img.php?image='+filename;
        var _width, _height;
        $("<img/>").attr("src", imgSrc).load(function(){
            _width = this.width; 
            _height = this.height;
            var width = _width;
            var height = _height;
            $(".EX-ow").html(width+'px');
            $(".EX-oh").html(height+'px');
        }); 
        $("#docnet").hide();
    });
    $('body').on('keyup', '#cwidth', function(ev){
        var ccw = $('#cwidth').val();
        if(ccw>0) {
            $('#docnet').show();
            var urlrx = 'exdo.php?s=user&a=3&met=c&file='+filename+'&w='+ccw;
            $('#docnet').attr('href',urlrx);
        } else {
            $('#docnet').hide();
        }
    });
    
/* Modal BS64 */
    $('body').on('click', '.ModalBS64', function(ev){
        window.filename = $(this).data('file');
        $.ajax({
            type: "Post",
            url: 'ajx.php?a=bs64&file='+filename+'&s='+global_sk,
            data: '',
            cache: false,
            global: false,
            async: true,
            success: function (data) {
                window.bs64=data;
                $(".modal-title").html('تولید کد Base64');
                var Mbody = '<div class="text-center pull-left"><a class="btn btn-default btn-sm IMc000 Nbs64"title="پنجره جدید" target=_blank" href="data:image/png;base64,'+data+'">مشاهده تصویر Base64</a><br /><img id="imgR" class="galimg" src="index.php?module=thumbnail&file='+filename+'" alt="'+filename+'" /><br /><small>تصویر انتخابی</small></div><div class="text-right pull-right"><p>جهت اطلاعات بیشتر در خصوص کد base64 و متد استفاده از آن در صفحات وب یا دیگر سیستم ها به بخش راهنمای این ابزار مراجعه نمائید.<br /></p><br /><br /><div id="lrsdiv" class="pull-right"><kbd class="clip_button btn btn-default btn-sm IMc000" ><i class="fa  fa-cloud-download"></i> دریافت</kbd><kbd class="timg hhh bg-blue pull-left lblue"></kbd><br /><br /><span class="bs64codspan cb-ltr pull-right small col-lg-6">'+data+'</span></div></div>';
                $(".modal-body").html(Mbody);
            },
                error: function (e) {
            }
        });
    });
    
    $('body').on('click', '.clip_button', function(){
        download(filename+".txt", bs64);
    }) 
    function download(filename, content) {
        var pom = document.createElement('a');
        pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(content));
        pom.setAttribute('download', filename);
        pom.click();
    }
    

/* Modal Optimize */
    $('body').on('click', '.ModalOptimize', function(ev){
        window.filename = $(this).data('file');
        var imgSrc = 'http://redup.ir/img.php?image='+filename;
        $.ajax({
            type: "Post",
            url: 'ajx.php?a=fsize&file='+filename+'&s='+global_sk,
            data: '',
            cache: false,
            global: false,
            async: true,
            success: function (data) {
                window.fsize=data;
                $(".modal-title").html('بهینه سازی تصویر');
                var Mbody = '<div class="EX-owh text-center pull-left"><br /><img id="imgR" class="galimg" src="index.php?module=thumbnail&file='+filename+'" alt="'+filename+'" /><br /><small>حجم فعلی: '+fsize+'</small></div><div class="text-right pull-right"><p>با کمک این ابزار به نسبت ساختار فایل اصلی امکان فشرده سازی حجمی یا ارتقا کیفیت فایل های تصویری مختلف را دارید.</p><br /><br /><div id="lrsdiv" class="pull-right"><br /><input type="range" name="quality" id="quality" value="50" min="0" max="100"><br /><br />کیفیت تصویر:<span class="cb-ltr" id="nq">%50</span><br /><br /><a id="docnet" href="exdo.php?s=user&a=4&q=50&file='+filename+'" class="btn btn-success IMcfff">اصلاح تصویر</a><br /><br />* با کاهش کیفیت تصویر حجم فایل خروجی نیز کاهش خواهید یافت و با افزایش کیفیت تصویر حجم فایل خروجی نیز افزایش خواهد یافت.<br /><br />* با توجه به احتمال بهینه بودن تصویر از قبل یا ناسازگاری الگوریتم ها، ممکن است این ابزار روی فایل شما تغییر سایزی اعمال نکند.</div></div>';
                $(".modal-body").html(Mbody);
            },
                error: function (e) {
            }
        });
    });
    $('body').on('mouseup', '#quality', function(){
        var quality = $(this).val();
        $('#nq').html('%'+quality);
        var urlrx = 'exdo.php?s=user&a=4&q='+quality+'&file='+filename;
        $('#docnet').attr('href',urlrx);
    }) 


/* Modal Clear */
    $('body').on('click', '.dismiss', function(ev){
                $(".modal-title").html(' ');
                $(".modal-body").html(' ');
    });