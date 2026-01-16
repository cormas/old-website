<?
session_start();

$code = $_SESSION["rand_value"];

header ("Content-type: image/png");
$font   = 5;
$width  = ImageFontWidth($font) * strlen($code);
$height = ImageFontHeight($font);

$im = @imagecreate ($width,$height);
$background_color = imagecolorallocate ($im, 255, 170, 85); //orange background
$text_color = imagecolorallocate ($im, 0, 0,0);//black text
imagestring ($im, $font, 0, 0,  $code, $text_color);
imagepng ($im);


?>