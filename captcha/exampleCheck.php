<?php
include 'Captcha.php';
$options['sessionName'] = 'vihash';
$options['fontPath'] = '';
$options['fontFile'] = 'anonymous.gdf';
$options['imageWidth'] = 150;
$options['imageHeight'] = 50;
$options['allowedChars'] = '1234567890';
$options['stringLength'] = 4;
$options['charWidth'] = 40;
$options['blurRadius'] = 3.0;
$options['secretKey'] = 'mySecRetkEy';

$captcha = new Captcha($options);
if ($captcha->isKeyRight($_POST['key'])) {
	echo 'Valid Key';
} else {
	echo 'inValid Key';
}