<!--        <# RANDOM_IMAGES #> -->
	</div>
   </div>
<!--
   <div id="RedupFooter" class="container">
      <div class="col-lg-6">
        <a title="تبلیغات" href="info.php?act=advertisment">
            <img alt="428x60" src="ads/def-428x60.png" />
        </a>
      </div>
      <div class="col-lg-6">
        <a title="تبلیغات" href="info.php?act=advertisment">
            <img alt="428x60" src="ads/def-428x60.png" />
        </a>
      </div>
   </div>
-->
   <div id="RedupFF">
      <div class="container">
         <div class="col-lg-6 text-left cb-ltr">
            <a href="http://www.redhue.ir"title="آپلود عکس">Redup</a> (v:1.3.1)
             2016 &copy; 
            <a href="https://codebox.ir" title="کدباکس">Codebox</a>
            | 
            <a href="sitemap.xml" title="xml sitemap"><i class="fa fa-fw fa-sitemap"></i> Sitemap</a>
            | 
            <a href="rss.xml" title="RSS Feed"><i class="fa fa-fw fa-rss"></i> RSS</a>
         </div>
         <div class="col-lg-6">
         
         تعداد تصاویر:  <# TOTAL_UPLOADS #>
         &nbsp&nbsp.:.&nbsp&nbsp
         تعداد کاربران:  <# TOTAL_USERS #>
         &nbsp&nbsp.:.&nbsp&nbsp
         بازدید: <# TOTAL_PAGE_VIEWS #>

         </div>
      </div>
      <h2>Free Photo Upload Center - آپلود سنتر رایگان عکس</h2>

   </div>
    <script language="JavaScript" type="text/javascript">  
        var count =175;
        var redirect="http://redup.ir/index.php";
        function countDown(){  
         if (count <=0){  
          window.location = redirect;  
         }else{  
          count--;  
          document.getElementById("timer").innerHTML = "شما پس از "+count+" ثانیه به صفحه نخست بازگشت داده خواهید شد."   
          setTimeout("countDown()", 1000)  
         }  
        }  
    </script>

<!-- START Modal -->
  <div id="Modal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"> </h4>
        </div>
        <div class="modal-body">
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default  pull-left dismiss" data-dismiss="modal">بستن</button>
          <span id="staticEX" > </span>
        </div>
      </div>
    </div>
  </div>
<!-- End Modal -->

<!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//analytics.codebox.ir/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', '3']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//analytics.codebox.ir/piwik.php?idsite=3&rec=1" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->

</body>
</html>
