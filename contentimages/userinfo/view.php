<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Styles and extensions for SeaMonkey, Firefox, Pale Moon</title>
<meta name="keywords" content="" >
<meta name="description" content="" >
<link rel="shortcut icon" href="AddsToolbarandButtons.png"  sizes="16x16" type="image/png">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<?php
if (is_writable("visitors.txt"))
echo("Есть права на запись в visitors.txt ");
echo("<br>");
echo("Размер файла visitors.txt (кб) - ");
$size=filesize("visitors.txt");
$count=$size/1024;
echo("$count");
echo("<hr>");
include("visitors.txt");
?>
</body>
</html>
