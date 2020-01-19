<?php
    include 'source/includes/ex.php';

    if(!isset($_GET["s"]))  {
        die("Security Error !  You must not be here except your name is ☼ Milad Abooali ☼");
        exit;
    } else  {
        $secret_key = $_GET["s"];
    }
    $ex_key = explode("r8b1", $secret_key, 2);
    $skey = $ex_key[0];   
    if (empty(GetSecretKey($skey))) {
        die("Security Error !  You must not be here except your name is ☼ Milad Abooali ☼");
        exit;
    }
    if(!isset($_GET["a"]))  {
        die("Security Error !  You must not be here except your name is ☼ Milad Abooali ☼");
    } else  {
        $called_action = $_GET["a"];
    }
    AddRequsetCount($skey);
    switch ($called_action) {
      case "bs64":
        if(!isset($_GET["file"]))  {
            die("file !");
        } else  {
            $filename = $_GET["file"];
        }
        CountEX('bs64');
        echo EXBase64($filename);
      break;
      case "fsize":
        if(!isset($_GET["file"]))  {
            die("file !");
        } else  {
            $filename = $_GET["file"];
        }
        echo FormatSize(filesize(GetImagePath($filename)));
      break;
      case "MakePublic":
 
      break;
      default:
        echo "No Action !";
    }
?>