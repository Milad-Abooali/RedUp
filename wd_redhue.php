<?php


    include 'source/includes/ex.php';
	
   if(!isset($_GET["i"]))  {
   die("No Action !");
   } else  {
   $file_name = $_GET["i"];
   }
        
// set the default timezone to use. Available since PHP 5.1
    date_default_timezone_set('UTC');
    $date = date("Y-m-d");

    $con=mysqli_connect("localhost","root","zq1xw2ce3","redhue_upload");
  if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

     $result = mysqli_query($con,"SELECT * FROM mmh_file_storage WHERE File_Id=$id");

  while($row = mysqli_fetch_array($result))
  {
     $dir = $row['dir_name'];
     $name = $row['filename'];
     $album = $row['album_id'];
  }

  function watermarkImage ($SourceFile, $WaterMarkText, $DestinationFile) { 
  list($width, $height) = getimagesize($SourceFile);
     $image_p = imagecreatetruecolor($width, $height);
     $image = imagecreatefromstring(file_get_contents($SourceFile));

 imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $width, $height);
  
   $red= imagecolorallocate($image_p, 250, 250, 250);
   $sw= imagecolorallocate($image_p, 0, 0, 0);
   $sww= imagecolorallocate($image_p, 100, 100, 100);
   $font = 'TAHOMA.TTF';
   $font_size = 11;
   
// Add sw right
 imagettftext($image_p, $font_size, 0, 9, 20, $sw, $font, $WaterMarkText);
 imagettftext($image_p, $font_size, 0, 8, 20, $sww, $font, $WaterMarkText);
   
// Add sw left
 imagettftext($image_p, $font_size, 0, 11, 20, $sw, $font, $WaterMarkText);
 imagettftext($image_p, $font_size, 0, 12, 20, $sww, $font, $WaterMarkText);
   
// Add sw botomm
 imagettftext($image_p, $font_size, 0, 10, 21, $sw, $font, $WaterMarkText);
 imagettftext($image_p, $font_size, 0, 10, 22, $sww, $font, $WaterMarkText);
   
// Add sw top
 imagettftext($image_p, $font_size, 0, 10, 18, $sw, $font, $WaterMarkText);
 imagettftext($image_p, $font_size, 0, 10, 19, $sww, $font, $WaterMarkText);
   
// Add text
 imagettftext($image_p,  $font_size, 0, 10, 20, $red, $font, $WaterMarkText);
  if ($DestinationFile<>'') {
 imagejpeg ($image_p, $DestinationFile, 100); 
  }
  else
  {
 
  }
 imagedestroy($image); 
 imagedestroy($image_p); 
  }

 if (!is_dir('wd/' . $dir)) {
 @mkdir('wd/' . $dir);
  }

  function random_string($length) {
     $key = '';
     $keys = array_merge(range(0, 9), range('a', 'z'));
  for ($i = 0; $i < $length; $i++) {
     $key .= $keys[array_rand($keys)];
  }
  return $key;
  }

     $new_name = random_string(9);

     $SourceFile = 'http://redhue.ir/upload/images/' . $dir . $name;
     $DestinationFile = 'wd/' . $dir . $new_name . '_' . $name;

     $WaterMarkText = 'R e d h u e . i r';

 watermarkImage ($SourceFile, $WaterMarkText, $DestinationFile);

  echo "http://redhue.ir/upload/$DestinationFile";
  echo "<br /><br />$SourceFile";

 mysqli_query($con,"INSERT INTO mmh_file_wd (new_name, filename, album_id, dir_name, text, date)
  VALUES ('$new_name', '$name', '$album', '$dir', '$texte', '$date')");

 mysqli_close($con);

?>