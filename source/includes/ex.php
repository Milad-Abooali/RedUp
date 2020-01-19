<?php
#---------------------------------
#   Database Link
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ 
   define('DB_HOSTNAME', 'localhost');
   define('DB_USERNAME', 'redhoot');
   define('DB_PASSWORD', 'ph*u8');
   define('DB_DATABASE', 'redhue_fa');

function LinkDB($sql) {
   $rb_name = DB_DATABASE;
   $rb_user = DB_USERNAME;
   $rb_pwd = DB_PASSWORD;
   $rb_host = DB_HOSTNAME;
   $con_db = mysqli_connect($rb_host, $rb_user, $rb_pwd, $rb_name) or die ('Cannot connect to server');
   mysqli_set_charset($con_db, 'utf8');
   mb_internal_encoding('UTF-8');
   mb_http_output('UTF-8');
   mb_http_input('UTF-8');
   mb_language('uni');
   mb_regex_encoding('UTF-8');
   ob_start('mb_output_handler');
   if (mysqli_connect_errno()) {echo "Failed to connect to MySQL: " . mysqli_connect_error();}
   $retval = mysqli_query($con_db,$sql) or die('Could not look up user information; ' . mysqli_error($con_db));
   return $retval;
}
#---------------------------------
#   Count Data
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ 
# Count All Images
function EXCountAllImages() { 
    $sql = "SELECT log_id FROM `mmh_file_logs` ORDER BY `log_id` DESC limit 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return $output['0']['log_id'];
}
# Count Private Images
function EXCountPrivateImages() { 
    $sql = "SELECT log_id FROM `mmh_file_logs` WHERE is_private=1 ORDER BY `log_id` DESC limit 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return $output['0']['log_id'];
}
# Count Public Images
function EXCountPublicImages() { 
    $output = EXCountAllImages() - EXCountPrivateImages();
    return $output;
}
# Count All Users
function EXCountAllUsers() { 
    $sql = "SELECT user_id FROM `mmh_user_info` ORDER BY `user_id` DESC limit 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return $output['0']['user_id'];
}
# Count Gallery Pages by ID & Album
function EXCountGalleryPages($id=0,$album=0) { 
    $sql = "SELECT count('file_id') as total FROM `mmh_file_storage` WHERE is_private=0 AND gallery_id=$id AND album_id=$album";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return $output['0']['total'];
}
#---------------------------------
#   Random && Last Functions
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ 
function FileThumb($filename) {
    $extension_type = substr($filename, strpos($filename, ".") + 1);
    
    $pos = strrpos($filename, ".");
    $extension_type = substr($filename, $pos);
    
    $extension_pos = strrpos($filename, '.');
    $thumb = substr($filename, 0, $extension_pos) . '_thumb' . $extension_type;
    return $thumb;
}
# Random Images
function RandomImages($count) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE `is_private` = '0' ORDER BY RAND() LIMIT $count;";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $filename[] = $row['filename'];
        $file_title[] = $row['file_title'];
        $thumburl[]='images/'.$row['dir_name'].FileThumb($row['filename']);
    }
    $i=1;
    $output = "<a title='تصویر تصادفی' href='viewer/$filename[0]'><img src='$thumburl[0]'class='rndimg rrrr r_rc' alt='تصویر تصادفی' /></a>";
    while($i < $count) {
        $output .= "&nbsp;&nbsp;&nbsp;&nbsp;<a title='تصویر تصادفی' href='viewer/$filename[$i]'><img src='$thumburl[$i]'class='rndimg rrrr r_rc' alt='تصویر تصادفی' /></a>";
        $i++;
    }
    return "<div id='rnd_imgs'class='col-lg-12'>$output</div>";
}
# Get Images All
function GetImagesLS($count) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE `is_private` = '0' ORDER BY file_id DESC LIMIT $count;";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $filename[] = $row['filename'];
        $file_title[] = $row['file_title'];
        $thumburl[]='images/'.$row['dir_name'].FileThumb($row['filename']);
    }
    $i=1;
    $output = "<a title='جدید' href='viewer/$filename[0]'><img src='$thumburl[0]'class='lsimg  r_rc' alt='$filename[0]' /></a>";
    while($i < $count) {
        $output .= "&nbsp;&nbsp;<a title='جدید' href='viewer/$filename[$i]'><img src='$thumburl[$i]'class='lsimg r_rc' alt='$filename[$i]' /></a>";
        if ($i == 1) { $output .='<br />'; }
        $i++;
    }
    return "$output";
}
# Get Icons Last
function GetIconsLS($count) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE icon>0 ORDER BY time_icon DESC LIMIT $count";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $filename[] = $row['filename'];
        $file_title[] = $row['file_title'];
        $thumburl[]='images/'.$row['dir_name'].FileThumb($row['filename']);
    }
    $i=1;
    $output = "<a title='دریافت' href='generate-icon/$filename[0]'class='btn btn-default btn-sm'><img src='$thumburl[0]'class='icoimg' alt='ico' /></a>";
    while($i < $count) {
        $output .= "&nbsp;<a title='دریافت' href='generate-icon/$filename[$i]'class='btn btn-default btn-sm'><img src='$thumburl[$i]'class='icoimg' alt='ico' /></a>";
        $i++;
    }
    return "$output";
}
#---------------------------------
#   Get By ID
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ 
# Get User By ID
function GetUserBI($id) { 
    $sql = "SELECT * FROM `mmh_user_info` WHERE user_id = $id limit 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output['0'] : False;
}
# Get Album By ID
function GetAlbumBI($id) { 
    $sql = "SELECT * FROM `mmh_gallery_albums` WHERE is_private=0 AND album_id = $id limit 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output['0'] : False;
}
# Get Albums By Gallery ID
function GetAlbumGalleryBI($gallery_id) { 
    $sql = "SELECT * FROM `mmh_gallery_albums` WHERE is_private=0 AND gallery_id = $gallery_id";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output : False;
}
# Get Image By ID
function GetImageBI($id) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE file_id = $id";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output['0'] : False;
}
# Get Image By Filename
function GetImageBN($filename) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE filename = '$filename'";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output['0'] : False;
}
#---------------------------------
#   Get All
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
# Get Images All
function GetImagesAll() { 
    $sql = "SELECT * FROM `mmh_file_logs` WHERE is_private=0";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return ($output) ? $output : False;
}
# Get Real Image Path
function GetImagePath($filename) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE filename = '$filename'";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $data[] = $row;
    }
    $output = ($data) ? 'images/' . $data['0']['dir_name'] . $data['0']['filename'] : False;
    return $output;
}
# Get Real Icon Path
function GetIconPath($filename) { 
    $sql = "SELECT * FROM `mmh_file_storage` WHERE filename = '$filename'";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $data[] = $row;
    }
    $output = ($data) ? 'images/' . $data['0']['dir_name'] . 'favicon.ico' : False;
    return $output;
}
#---------------------------------
#   EX Do
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
# Count Ex
function CountEX($target) { 
    $sql = "UPDATE mmh_site_cache SET cache_value=(cache_value+1) WHERE cache_id='$target'";
    $retval = LinkDB($sql);
}
# Make Private
function MakePrivateDO($id) { 
    $sql = "UPDATE mmh_file_storage SET Is_Private='1' WHERE File_ID=$id";
    $retval = LinkDB($sql);
}
# Make Public
function MakePublicDO($id) { 
    $sql = "UPDATE mmh_file_storage SET Is_Private='0' WHERE File_ID=$id";
    $retval = LinkDB($sql);
}
# Add Icon
function AddIcon($id) { 
    $sql = "UPDATE mmh_file_storage SET icon=icon+1, time_icon=NOW() WHERE File_ID=$id";
    $retval = LinkDB($sql);
}
# Base64
function EXBase64($filename) { 
    $file_path = GetImagePath($filename);
    $output = base64_encode(file_get_contents($file_path));
    return $output;
}
# Go Download
function GoDownload($destination) { 
    if(is_file($destination)) {
        if(ini_get('zlib.output_compression')) { ini_set('zlib.output_compression', 'Off');	}
            switch(strtolower(substr(strrchr($destination, '.'), 1))) {
                case 'pdf':
                    $mime = 'application/pdf';
                break;
                case 'zip':
                    $mime = 'application/zip';
                break;
                case 'jpeg':
                case 'jpg':
                    $mime = 'image/jpg';
                break;
                default:
                    $mime = 'application/force-download';
        }
        header('Pragma: public');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Last-Modified: '.gmdate ('D, d M Y H:i:s', filemtime ($destination)).' GMT');
        header('Cache-Control: private',false);
        header('Content-Type: '.$mime);
        header('Content-Disposition: attachment; filename="'.basename($destination).'"');
        header('Content-Transfer-Encoding: binary');
        header('Content-Length: '.filesize($destination));
        header('Connection: close');
        readfile($destination);
        exit();
    }
}
# Format Size
function FormatSize($bytes) {
    if ($bytes >= 1073741824) {
        $bytes = number_format($bytes / 1073741824, 2) . ' GB';
    } elseif ($bytes >= 1048576) {
        $bytes = number_format($bytes / 1048576, 2) . ' MB';
    } elseif ($bytes >= 1024){
        $bytes = number_format($bytes / 1024, 2) . ' KB';
    } elseif ($bytes > 1) {
        $bytes = $bytes . ' bytes';
    } elseif ($bytes == 1) {
        $bytes = $bytes . ' byte';
    } else {
        $bytes = '0 bytes';
    }
    return $bytes;
}
#---------------------------------
#   Secret Key
#▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
# Gen Secret Key
function GenSecretKey($page_title) { 
    $time = time();
    $key = md5($page_title . $time);
    $sql = "INSERT INTO ex_secret_key (skey, page_title, time) VALUES ('$key', '$page_title', '$time')";
    $retval = LinkDB($sql);
    return $key;
}
function GetSecretKey($key) { 
    $sql = "SELECT * FROM `ex_secret_key` WHERE skey = '$key' LIMIT 1";
    $retval = LinkDB($sql);
    while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
        $output[] = $row;
    }
    return $output;
}
# Add Requset Count
function AddRequsetCount($key) { 
    $sql = "UPDATE ex_secret_key SET count_request=count_request+1 WHERE skey = '$key'";
    $retval = LinkDB($sql);
}
?>