<?php
    include 'source/includes/ex.php';
    if(!isset($_GET["s"]))  {
        $side = 'admin';
    } else  {
        $side = $_GET["s"];
    }
    if(!isset($_GET["a"]))  {
        die("No Action !");
    } else  {
        $called_action = $_GET["a"];
    }

    if($side=='admin') {
        switch ($called_action) {
          case "delete-files":
            
          break;
          case "MakePrivate":
            if(!isset($_GET["i"]))  {
                die("No ID !");
            } else  {
                $id = $_GET["i"];
            }
            MakePrivateDO($id);
            echo "Done";
          break;
          case "MakePublic":
            if(!isset($_GET["i"]))  {
                die("No ID !");
            } else  {
                $id = $_GET["i"];
            }
            MakePublicDO($id);
            echo "Done";
          break;
          case "grab": // Grab google Images
            include "shdom.php";
            if(!isset($_GET["q"]))  {
                die("Quality !");
            } else  {
                $search_query = $_GET["q"];
            }
            $search_query = urlencode( $search_query );
            $html = file_get_html( "https://www.google.com/search?q=$search_query&tbm=isch" );
            $images = $html->find('a');
            $image_count = 10; //Enter the amount of images to be shown
            $i = 0;
            foreach($images as $image){
                if($i == $image_count) break;
                $i++;
                // DO with the image whatever you want here (the image element is '$image'):
                echo $image;
            }
          break;
          default:
            echo "No Action !";
        }

        if(!isset($_GET["bp"]))  {
            die("bp");
        } else  {
            $back = $_GET["bp"];
        }
?>
<script type="text/javascript">
function logout(){window.location.href="<?php echo ("$back"); ?>";}
ident=window.setTimeout("logout()",50);
</script>
<?php
    }
    if($side=='user') {
        switch ($called_action) {
          case "1": // Genrate Ico
            if(!isset($_GET["file"]))  {
                die("file !");
            } else  {
                $filename = $_GET["file"];
            }
            if (GetImageBN($filename)['icon']>0) {
                $destination = 'images/' . GetImageBN($filename)['dir_name'] . 'favicon.ico';
                $file_ID = GetImageBN($filename)['file_id'];
                AddIcon($file_ID);
            } else {
                require( 'icogen.php' );
                $source = GetImagePath($filename);
                $destination = 'images/' . GetImageBN($filename)['dir_name'] . 'favicon.ico';
                $ico_lib = new PHP_ICO( $source, array( array( 32, 32 ), array( 64, 64 ) ) );
                $ico_lib->save_ico( $destination );
                $file_ID = GetImageBN($filename)['file_id'];
                AddIcon($file_ID);
                CountEX('icons');
            }
            GoDownload($destination);
          break;
          case "2": // Convert Image
            if(!isset($_GET["file"]))  {
                die("file !");
            } else  {
                $filename = $_GET["file"];
            }
            if(!isset($_GET["t"]))  {
                die("Type !");
            } else  {
                $type = $_GET["t"];
            }
            CountEX('convert');
            $imageFile = GetImagePath($filename); 
            $N_filename = md5($filename);
            $destination = "tools/convertor/$N_filename.$type";
            if (!file_exists($destination)) {
                $O_type = strtolower( pathinfo( $filename, PATHINFO_EXTENSION ));
                switch ($O_type) {
                    case 'jpeg':
                        $imageObject = imagecreatefromjpeg($imageFile);
                    break;
                    case 'jpg':
                        $imageObject = imagecreatefromjpeg($imageFile);
                    break;
                    case 'png':
                        $imageObject = imagecreatefrompng($imageFile);
                    break;
                    case 'gif':
                        $imageObject = imagecreatefromgif($imageFile);
                    break;
                    case 'bmp':
                        $imageObject = imagecreatefromwbmp($imageFile);
                    break;
                    default:
                        throw new InvalidArgumentException('File "'.$filename.'" is not valid jpg, png or gif image.');
                    break;
                }
                switch ($type) {
                    case 'jpg':
                        imagejpeg($imageObject,"tools/convertor/$N_filename.jpg");
                        imagedestroy($imageObject);
                    break;
                    case 'gif':
                        imagegif($imageObject,"tools/convertor/$N_filename.gif");
                        imagedestroy($imageObject);
                    break;
                    case 'png':
                        imagepng($imageObject,"tools/convertor/$N_filename.png");
                        imagedestroy($imageObject);
                    break;
                    case 'bmp':
                        include( 'tobmp.php' );
                        $ToBMP = new ToBmp();
                        $ToBMP->image_info($imageFile);
                        $ToBMP->imagebmp("tools/convertor/$N_filename.bmp");
                    break;
                }
            }
            GoDownload($destination);
          break;
          case "3": // Resize Image
            if(!isset($_GET["file"]))  {
                die("file !");
            } else  {
                $filename = $_GET["file"];
            }
            if(!isset($_GET["met"]))  {
                die("met !");
            } else  {
                $metod = $_GET["met"];
            }
            CountEX('resiz');
            $file = GetImagePath($filename);
            $type = strtolower( pathinfo( $file, PATHINFO_EXTENSION ));
            $N_filename = md5($filename).$metod;
            $destination = "tools/resized/$N_filename.$type";
            if (!file_exists($destination) || $metod=='c') {
                $size=GetimageSize($file);
                switch ($metod) {
                    case 'o2':
                        $width=$size[1]/2;
                    break;
                    case 'o3':
                        $width=$size[1]/3;
                    break;
                    case 'o4':
                        $width=$size[1]/4;
                    break;
                    case 'o5':
                        $width=$size[1]/5;
                    break;
                    case 'o10':
                        $width=$size[1]/10;
                    break;
                    case 'x1':
                        $width=ceil($size[1]*1.5);
                    break;
                    case 'x2':
                        $width=ceil($size[1]*2);
                    break;
                    case 'x3':
                        $width=ceil($size[1]*3);
                    break;
                    case 'x5':
                        $width=ceil($size[1]*5);
                    break;
                    case 'w125':
                        $width=125;
                    break;
                    case 'w250':
                        $width=250;
                    break;
                    case 'w500':
                        $width=500;
                    break;
                    case 'w650':
                        $width=650;
                    break;
                    case 'c':
                        if(!isset($_GET["w"]))  {
                            die("width !");
                        } else  {
                            $width = $_GET["w"];
                        }
                    break;                default:
                        $width='150';
                    break;
                }
                $height=round($width*$size[1]/$size[0]);
                switch ($type) {
                    case 'jpeg':
                        $images_orig = imagecreatefromjpeg($file);
                    break;
                    case 'jpg':
                        $images_orig = imagecreatefromjpeg($file);
                    break;
                    case 'png':
                        $images_orig = imagecreatefrompng($file);
                    break;
                    case 'gif':
                        $images_orig = imagecreatefromgif($file);
                    break;
                    case 'bmp':
                        $images_orig = imagecreatefromwbmp($file);
                    break;
                    default:
                        throw new InvalidArgumentException('File "'.$file.'" is not valid jpg, png or gif image.');
                    break;
                }
                $photoX = ImagesX($images_orig);
                $photoY = ImagesY($images_orig);
                $images_fin = ImageCreateTrueColor($width, $height);
                ImageCopyResampled($images_fin, $images_orig, 0, 0, 0, 0, $width+1, $height+1, $photoX, $photoY);
                switch ($type) {
                    case 'jpg':
                        imagejpeg($images_fin,"tools/resized/$N_filename.jpg");
                    break;
                    case 'gif':
                        imagegif($images_fin,"tools/resized/$N_filename.gif");
                    break;
                    case 'png':
                        imagepng($images_fin,"tools/resized/$N_filename.png");
                    break;
                    case 'bmp':
                        imagewbmp($images_fin,"tools/resized/$N_filename.png");
                    break;
                }          
                ImageDestroy($images_orig);
                ImageDestroy($images_fin);
            }
            GoDownload($destination);
          break;
          case "4": // Optimise Image
            if(!isset($_GET["file"]))  {
                die("file !");
            } else  {
                $filename = $_GET["file"];
            }
            if(!isset($_GET["q"]))  {
                die("Quality !");
            } else  {
                $quality = $_GET["q"];
            }
            if($quality<5)  {
                $quality++;
            } else {
                $quality = $quality-5;
            }            
            CountEX('optimise');
            $imageFile = GetImagePath($filename);
            $N_filename = md5($filename).$quality;
            $type = strtolower( pathinfo( $imageFile, PATHINFO_EXTENSION ));
            $destination = "tools/optimized/$N_filename.$type";
            if (!file_exists($destination)) {
                switch ($type) {
                    case 'jpeg':
                        $imageObject = imagecreatefromjpeg($imageFile);
                        imagejpeg($imageObject, $destination, $quality); // $quality 0 ~ 100
                    break;
                    case 'jpg':
                        $imageObject = imagecreatefromjpeg($imageFile);
                        imagejpeg($imageObject, $destination, $quality); // $quality 0 ~ 100
                    break;
                    case 'png':
                        $quality = intval((100-$quality)/10);
                        $imageObject = imagecreatefrompng($imageFile);
                        imagepng($imageObject, $destination, $quality); // $quality 0 ~ 9
                    break;
                    case 'gif':
                        $quality = intval($quality*2.5);
                        $imageObject = imagecreatefromstring(file_get_contents($imageFile));
                        imagetruecolortopalette($imageObject, false, $quality); // $quality 1 ~ 256
                        imagegif($imageObject, "$destination");
                    break;
                    default:
                        throw new InvalidArgumentException('File "'.$filename.'" is not valid jpg, png or gif image.');
                    break;
                }
                ImageDestroy($imageObject);
            }   
            GoDownload($destination);
          break;    
          break;   
          default:
            echo "User No Action !";
        }   
    }
        
?>


