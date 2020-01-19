<?php
	include 'source/includes/ex.php';
    
   if(!isset($_GET["a"]))  {
   die("No Action !");
   } else  {
   $called_action = $_GET["a"];
   }
   switch ($called_action) {
      case "sitemap":
header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- XML PAGES -->
    <url>
        <loc>http://redup.ir/pages-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/gallery-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/user-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/album-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.7</priority>
    </url>
    <url>
        <loc>http://redup.ir/viewer-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Hourly</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>http://redup.ir/links-map.xml</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Hourly</changefreq>
        <priority>0.9</priority>
    </url>
</urlset> 

<?php
      break;
      case "pages":
header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- INDEX PAGES -->
    <url>
        <loc>http://redup.ir/آپلود-عکس</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>http://redup.ir/آپلود-اینترنت</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/آپلود-فشرده</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>Daily</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/random</loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>always</changefreq>
        <priority>0.7</priority>
    </url>
<!-- INFO PAGES -->
    <url>
        <loc>http://redup.ir/درباره-ردآپ</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/info.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/قوانین-سایت</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/info.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>http://redup.ir/تبلیغات</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/info.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.9</priority>
    </url>
<!-- CONTACT PAGES -->
    <url>
        <loc>http://redup.ir/گزارش-تخلف</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/contact.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/تماس-با-ما</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/contact.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
<!-- USER PAGES -->
    <url>
        <loc>http://redup.ir/عضویت-در-سایت</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/users.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/ورود-کاربران</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/login.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/تولید-آیکن</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/login.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
    <url>
        <loc>http://redup.ir/تولید-base64</loc>
        <lastmod><?php echo date('c',filemtime("source/public_html/login.tpl")); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
</urlset> 

<?php
      break;
      case "gallery":
    $pages = ceil(EXCountGalleryPages(0,0)/13);
    $gallery = EXCountAllUsers();
    header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- Gallery PAGES -->
<?php $i=1; while($i<=$pages) { ?>
    <url>
        <loc>http://redup.ir/gallery.php?page=<?php echo $i ?></loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>weekly</changefreq>
        <priority>0.8</priority>
    </url>
<?php $i++; } ?>


<?php 
    $g=1; 
    while($g<=$gallery) { 
        $pages = ceil(EXCountGalleryPages($g,0)/13);
        $i=1; 
        while($i<=$pages) { ?>
            <url>
                <loc>http://redup.ir/users.php?act=gallery&amp;gal=<?php echo $g ?>&amp;page=<?php echo $i ?></loc>
                <lastmod><?php echo date('c',time()); ?></lastmod>
                <changefreq>weekly</changefreq>
                <priority>0.8</priority>
            </url>
<?php 
        $i++; } 
    $g++; } 
?>
</urlset> 

<?php
      break;
      case "user":
    $user = EXCountAllUsers();
    header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- User PAGES -->
<?php $i=1; while($i<=$user) { ?>
    <url>
        <loc>http://redup.ir/profile.php?view=<?php echo GetUserBI($i)['username'] ?></loc>
        <lastmod><?php echo date('c',GetUserBI($i)['time_joined']); ?></lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.6</priority>
    </url>
<?php $i++; } ?>
</urlset>
<?php
      break;
      case "album":
    $user = EXCountAllUsers();
    header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- User PAGES -->
<?php $i=1; while($i<=$user) { 

        $albuums = GetAlbumGalleryBI($i);

if(!empty( $albuums ) ) {
        foreach ($albuums as $album) {
        $pages = ceil(EXCountGalleryPages($album['gallery_id'],$album['album_id'])/13);
        $p=1; 
        while($p<=$pages) { 
?>
    <url>
        <loc>http://redup.ir/users.php?act=gallery&amp;gal=<?php echo $album['gallery_id'] ?>&amp;cat=<?php echo $album['album_id'] ?>&amp;page=<?php echo $p ?></loc>
        <lastmod><?php echo date('c',time()); ?></lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.7</priority>
    </url>
    
<?php $p++; } } } $i++; } ?>
</urlset>
<?php
      break;
      case "viewer":
    $images = GetImagesAll();
    header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- User PAGES -->
<?php foreach ($images as $image) { ?>
    <url>
        <loc>http://redup.ir/viewer/<?php echo $image['filename'] ?></loc>
        <lastmod><?php echo date('c',$image['time_uploaded']); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
<?php } ?>
</urlset>
<?php
      break;
      case "links":
    $images = GetImagesAll();
    header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="css/style.xsl"?>';
?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- User PAGES -->
<?php foreach ($images as $image) { ?>
    <url>
        <loc>http://redup.ir/links/<?php echo $image['filename'] ?></loc>
        <lastmod><?php echo date('c',$image['time_uploaded']); ?></lastmod>
        <changefreq>yearly</changefreq>
        <priority>0.8</priority>
    </url>
<?php } ?>
</urlset>
<?php
      break;
      default:
        echo "No Action !";
   }
?>