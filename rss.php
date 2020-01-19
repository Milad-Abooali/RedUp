<?php
	include 'source/includes/ex.php';
    
    $count_item = 25;
    
   if(!isset($_GET["a"]))  {
   die("No Action !");
   } else  {
   $called_action = $_GET["a"];
   }
   switch ($called_action) {
      case "AllImages":
header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8" ?>';
?>

<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
        <title>Redup All Images</title>
        <link>http://redup.ir/gallery.php</link>
        <description>Redup | Free Photo Upload Center - ردآپ | مرکز میزبانی رایگان تصاویر</description>
        <atom:link href="http://redup.ir/site-rss.xml" rel="self" type="application/rss+xml" />
        <?php
         $sql = "SELECT * FROM `mmh_file_storage` WHERE Gallery_Id='0' ORDER BY file_id DESC LIMIT $count_item";
         $retval = LinkDB($sql);
         while($row = mysqli_fetch_assoc($retval)) {
        ?>
        <item>
            <title><?php echo $row['file_title']; ?></title>
            <link>http://redup.ir/viewer/<?php echo $row['filename']; ?></link>
            <description>بازدید : <?php echo $row['viewer_clicks']; ?></description>
        </item> 	
        <?php } ?>
    </channel>
</rss>
<?php
      break;
      case "UserImages":
if(!isset($_GET["i"]))  {
die("No user id !");
} else  {
$user_id = $_GET["i"];
}
$username = GetUserBI($user_id)['username'];
 header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8" ?>';
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
        <title>Redup User <?php echo $username ?> Images</title>
        <link>http://redup.ir/users.php?act=gallery&amp;gal=<?php echo $user_id ?></link>
        <description>Redup | Free Photo Upload Center - ردآپ | مرکز میزبانی رایگان تصاویر</description>
        <atom:link href="http://redup.ir/user-rss.xml?i=<?php echo $user_id ?>" rel="self" type="application/rss+xml" />
        <?php
         $sql = "SELECT * FROM `mmh_file_storage` WHERE Gallery_Id=$user_id AND Is_Private='0' ORDER BY file_id DESC LIMIT $count_item";
         $retval = LinkDB($sql);
         while($row = mysqli_fetch_assoc($retval)) {
        ?>
        <item>
            <title><?php echo $row['file_title']; ?></title>
            <link>http://redup.ir/viewer/<?php echo $row['filename']; ?></link>
            <description>بازدید : <?php echo $row['viewer_clicks']; ?></description>
        </item> 	
        <?php } ?>
    </channel>
</rss>
<?php
      break;
      case "AlbumImages":
if(!isset($_GET["i"]))  {
die("No album id !");
} else  {
$album_id = $_GET["i"];
}
$user_id = GetAlbumBI($album_id)['gallery_id'];
$album_title = GetAlbumBI($album_id)['album_title'];
 header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8" ?>';
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
        <title>Redup Album <?php echo $album_title ?> Images</title>
        <link>http://redup.ir//users.php?act=gallery&amp;gal=<?php echo $user_id ?>&amp;cat=<?php echo $album_id ?></link>
        <description>Redup | Free Photo Upload Center - ردآپ | مرکز میزبانی رایگان تصاویر</description>
        <atom:link href="http://redup.ir/user-rss.xml?i=<?php echo $user_id ?>&amp;ii=<?php echo $album_id ?>" rel="self" type="application/rss+xml" />
        <?php
         $sql = "SELECT * FROM `mmh_file_storage` WHERE Gallery_Id=$user_id AND Is_Private='0' AND Album_Id=$album_id ORDER BY file_id DESC LIMIT $count_item";
         $retval = LinkDB($sql);
         while($row = mysqli_fetch_assoc($retval)) {
        ?>
        <item>
            <title><?php echo $row['file_title']; ?></title>
            <link>http://redup.ir/viewer/<?php echo $row['filename']; ?></link>
            <description>بازدید : <?php echo $row['viewer_clicks']; ?></description>
        </item> 	
        <?php } ?>
    </channel>
</rss>
<?php
      break;
      default:
        echo "No Action !";
   }
?>