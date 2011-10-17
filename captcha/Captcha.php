<?php
/**
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
/**
 * Captcha.php Created on 09-Jan-08
 *
 * @author Ala'a A. Ibrahim <ala dot ibrahim at gmail dot com>
 * @version $Rev$ $Author$ $Date$
 */
// MAKE SURE THE SESSION WILL ONLY USE COOKIES
ini_set('session.use_only_cookies', '1');

/**
 * Handle the manage
 *
 * @author Ala'a A. Ibrahim <ala dot ibrahim at gmail dot com>
 */
class Captcha {
  
  /**
   * The session variable name, if you are using more than captcha in your site, 
   * use a different key, also be sure to not use this variable name in your session.
   *
   * @var string
   */
  protected $sessionName = 'vihash';
  
  /**
   * The path where the font is
   *
   * @var string
   */
  protected $fontPath = '.';
  
  /**
   * The font file name
   *
   * @var string
   */
  protected $fontFile = 'anonymous.gdf';
  
  /**
   * the generated image width
   *
   * @var integer
   */
  protected $imageWidth = 200;
  
  /**
   * the generated image height
   *
   * @var integer
   */
  protected $imageHeight = 50;
  
  /**
   * a string containing all the allowed characters to be viewed in the
   * captcha
   *
   * @var string
   */
  protected $allowedChars = '1234567890';
  
  /**
   * the number of characters to be viewed on the string
   *
   * @var integer
   */
  protected $stringLength = 5;
  
  /**
   * how much px each character should take
   *
   * @var integer
   */
  protected $charWidth = 40;
  
  /**
   * the value of the radius for the blur effect
   *
   * @var float
   */
  protected $blurRadius = 3;
  
  /**
   * A secret key to be appended to the stored value in the session,
   * it's better to change it to any string you choose
   *
   * @var string
   */
  protected $secretKey = "0A7460Z3e23>e4da&Gf43d7";
  
  /**
   * Constructor
   *
   * @param array $options
   */
  public function __construct($options = array()) {
    @session_start();
    if (is_array($options)) {
	    $allowedOptions = array ('sessionName', 'fontPath', 'fontFile',
	           'imageWidth', 'imageHeight', 'allowedChars', 'stringLength',
	           'charWidth', 'blurRadius', 'secretKey'
        );
	    $allowedOptionsCount = count($allowedOptions);
	    for ($i = 0; $i < $allowedOptionsCount; $i++) {
	    	if (isset($options[$allowedOptions[$i]])) {
	    		$this->$allowedOptions[$i] = $options[$allowedOptions[$i]]; 
	    	}
	    }
    }
  }

  /**
   * This function creates a captcha image, and outputs it, in addition to
   * add the value to the session. for the validation.
   *
   */
  public function getCaptcha() {
    $rand = $this->randomString();
    $_SESSION[$this->sessionName] = md5($rand.$this->secretKey);
    $this->generateValidationImage($rand);
  }

  /**
   * this function checks if an entered key is right or wrong
   *
   * @param string $key
   * @return bool
   */
  public function isKeyRight($key) {
    $isKeyRight = $_SESSION[$this->sessionName] == md5($key.$this->secretKey);
    unset($_SESSION[$this->sessionName]);
    if ($isKeyRight) {
      return true;
    }
    return false;
  }

  protected function randomString() {
    $chars = $this->allowedChars;
    $s = "";
    for ($i = 0; $i < $this->stringLength; $i++) {
      $int         = rand(0, strlen($chars)-1);
      $rand_letter = $chars[$int];
      $s           = $s . $rand_letter;
    }
    return $s;
  }

  protected function generateValidationImage($rand) {
    $width = $this->imageWidth;
    $height = $this->imageHeight;
    $image = imagecreate($width, $height);
    $bgColor = imagecolorallocate ($image, 255, 255, 255);
    $textColor = imagecolorallocate ($image, 0, 0, 0);

    // write the random number
    $font = imageloadfont($this->fontPath."/".$this->fontFile);
    for ($i = 0; $i < $this->stringLength; $i ++) {
      $textImage = imagecreate($this->charWidth,$this->imageHeight);
      imagefill($textImage,$this->charWidth,$this->imageHeight,imagecolorallocate ($textImage, 255, 255, 255));
      for ($j = 0; $j < 10; $j++) {
        $rx1 = rand(0, $this->charWidth);
        $rx2 = rand(0, $this->charWidth);
        $ry1 = rand(0, $this->imageHeight);
        $ry2 = rand(0, $this->imageHeight);
        $rcVal = rand(0, 255);
       $rc1 = imagecolorallocate($textImage, rand(0, 155), rand(0, 155), rand(100, 255));
        imageline($textImage, $rx1, $ry1, $rx2, $ry2, $rc1);
      }
      imagestring($textImage, $font, 3 , rand(0,5), $rand[$i], imagecolorallocate($textImage,rand(0, 155), rand(0, 155), rand(0, 155)));
      ImageCopy($image, imagerotate($textImage,  rand(-25,25),imagecolorallocate ($textImage, 255, 255, 255)) , 3 + ($i * $this->charWidth) , 0, 0, 0, $this->charWidth,$this->imageHeight);

//      imagestring($image, $font, 3 + ($i * $this->charWidth), rand(0,10), $rand[$i], imagecolorallocate($image,rand(0, 155), rand(0, 155), rand(0, 155)));
        
    }

    for ($i = 0; $i < 5; $i++) {
        $style = array(
            $textColor,$textColor,$textColor,$textColor,$textColor,$bgColor,$bgColor,$bgColor,$bgColor
        );
        imagesetstyle($image, $style);
        imageline($image, rand(0, $width/2), rand(0, $height), rand($width/2, $width), rand(0, $height), IMG_COLOR_STYLED);
    }

    $this->blur($image, $this->blurRadius);
//    imagefilter($image, IMG_FILTER_MEAN_REMOVAL);

    // send several headers to make sure the image is not cached
    // date in the past
    header("Expires: Mon, 23 Jul 1993 05:00:00 GMT");

    // always modified
    header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");

    // HTTP/1.1
    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0", false);

    // HTTP/1.0
    header("Pragma: no-cache");

    // send the content type header so the image is displayed properly
    header('Content-type: image/jpeg');

    imagejpeg($image);
    imagedestroy($image);
  }

  protected function blur(&$gdimg, $radius = 5.0) {
    // Taken from Torstein Hï؟½nsi's phpUnsharpMask (see phpthumb.unsharp.php)

    $radius = round(max(0, min($radius, 50)) * 2);
    if (!$radius) {
      return false;
    }

    $w = ImageSX($gdimg);
    $h = ImageSY($gdimg);
    if ($imgBlur = ImageCreateTrueColor($w, $h)) {
      // Gaussian blur matrix:
      //    1    2    1
      //    2    4    2
      //    1    2    1

      // Move copies of the image around one pixel at the time and merge them with weight
      // according to the matrix. The same matrix is simply repeated for higher radii.
      for ($i = 0; $i < $radius; $i++)    {
        ImageCopy     ($imgBlur, $gdimg, 0, 0, 1, 1, $w - 1, $h - 1);            // up left
        ImageCopyMerge($imgBlur, $gdimg, 1, 1, 0, 0, $w,     $h,     50.00000);  // down right
        ImageCopyMerge($imgBlur, $gdimg, 0, 1, 1, 0, $w - 1, $h,     33.33333);  // down left
        ImageCopyMerge($imgBlur, $gdimg, 1, 0, 0, 1, $w,     $h - 1, 25.00000);  // up right
        ImageCopyMerge($imgBlur, $gdimg, 0, 0, 1, 0, $w - 1, $h,     33.33333);  // left
        ImageCopyMerge($imgBlur, $gdimg, 1, 0, 0, 0, $w,     $h,     25.00000);  // right
        ImageCopyMerge($imgBlur, $gdimg, 0, 0, 0, 1, $w,     $h - 1, 20.00000);  // up
        ImageCopyMerge($imgBlur, $gdimg, 0, 1, 0, 0, $w,     $h,     16.666667); // down
        ImageCopyMerge($imgBlur, $gdimg, 0, 0, 0, 0, $w,     $h,     50.000000); // center
        ImageCopy     ($gdimg, $imgBlur, 0, 0, 0, 0, $w,     $h);
      }
      return true;
    }
    return false;
  }
}
