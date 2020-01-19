<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <meta http-equiv="Content-Language" content="fa-IR" />
   <meta http-equiv="imagetoolbar" content="no" />
   <meta name="version" content="Redup 1.3.1" />
   <meta name="description" content="Redup Free Image Hosting - ردآپ آپلود سنتر رایگان عکس" />
   <meta name="keywords" content=" " />
    
   <title>Administration Control Panel</title>
   <base href="<# BASE_URL #>" />
   <link rel="shortcut icon" href="favicon.ico" />
   <link rel="alternate" type="application/atom+xml" title="Redup Rss Feed" href="feed.php">
   
   <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
   <link href="source/plupload/queue/css/plupload.css" rel="stylesheet" type="text/css" media="screen" />
   <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
   <link href="css/5.css" rel="stylesheet" type="text/css" media="screen" />
   <!--[if lte IE 7]>
     <link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" />
   <![endif]-->
  	<script type="text/javascript" src="source/includes/scripts/jquery.min.js" charset="UTF-8"></script>
   	<script>$(document).ready(function(){window.global_sk="<# SECRET_KEY #>";});</script>
  	<script type="text/javascript" src="source/includes/scripts/ex.js" charset="UTF-8"></script>
  	<script type="text/javascript" src="source/includes/zeroclipboard-2.2.0/dist/ZeroClipboard.min.js" charset="UTF-8"></script>
  	<script type="text/javascript" src="source/includes/scripts/bootstrap.min.js" charset="UTF-8"></script>
  	<!--
	<script type="text/javascript" src="source/includes/scripts/top_up.js" charset="UTF-8"></script>
	-->	
	<script type="text/javascript" src="source/includes/scripts/base64_min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/jquery.dropdown.js" charset="UTF-8"></script>
	<script type="text/javascript" src="source/includes/scripts/genjscript.js" charset="UTF-8"></script>
</head>
<body>
<div class="back-to-top light text-center"><i class="fa fa-arrow-circle-o-up fa-2x"></i><br /> بالا</div>
   <div id="RedupHF">
      <div class="container">
         <div class="col-lg-4 cb-ltr">
         <!--
            Sites: 
            <a href="http://redup.ir" alt="قوانین سایت ردآپ">Persian</a>
            ○
            <a href="http://redhue.ir" alt="قوانین سایت ردآپ">International (EN)</a>
             -->
            <a href="تبلیغات" alt="تبلیغات در ردآپ">تبلیغات</a>
            ♦
            <a href="تماس-با-ما" alt="ارتباط با ما">تماس با ما</a>
         </div>
         <div class="col-lg-4 text-center">
            فَاللهُ خیر حافظاً وَ هُوَ اَرحَمُ الرّاحمین
         </div>
         <div class="col-lg-4">
            <a href="آپلود-عکس" alt="آپلود عکس">آپلود عکس</a>
            ♦
            <a href="درباره-ردآپ" alt="درباره این وب سایت">درباره ردآپ</a>
            ♦
            <a href="قوانین-سایت" alt="قوانین سایت ردآپ">قوانین سایت</a>
            ♦
            <a href="گزارش-تخلف" alt="گزارش تصاویر مغایر با قوانین سایت">گزارش تخلف</a>
            <!--
            ♦
            <a href="تبلیغات" alt="تبلیغات در ردآپ">تبلیغات</a>
            ♦
            <a href="تماس-با-ما" alt="ارتباط با ما">تماس با ما</a>
            -->
         </div>
      </div>
   </div>
   <div id="RedupHeader" class="container">   
      <div class="col-lg-12">
         <ul id="topnav">
			<li><a href="mg.php">نظارت بر تصاویر</a></li>
			<li><a href="mg.php?act=ban_control">لیست سیاه</a></li>
            
            <span style="float: left;background: #FFCC66;">
               <li><a href="http://redup.ir" target="_blank" >نمایش سایت</a></li>
            </span>
<if="$mmhclass->info->is_mod == true || $mmhclass->info->is_admin == true">
            <li style="float: left;background: #f00;"><a href="mg.php"><i class="fa fa-eye fa-fw"></i> نظارت بر سایت</a></li>
</endif>
<if="$mmhclass->info->is_admin == true">
            <li style="float: left;background: #f00;"><a href="be.php"><i class="fa fa-gear fa-fw"></i> مدیریت سایت</a></li>
</endif>

         </ul>
      </div>
   </div>
   <div class="container">
   <div id="page_body" class="page_body col-lg-12">
