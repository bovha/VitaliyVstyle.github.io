<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Статистика сайта https://vitaliyvstyle.github.io/</title>
<meta name="keywords" content="" >
<meta name="description" content="" >
<link rel="shortcut icon" href="AddsToolbarandButtons.png"  sizes="16x16" type="image/png">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<?php
$filename = "visitors.txt";
if (is_writable($filename))
echo("Есть права на запись в visitors.txt ");
echo("<br>");
echo("Размер файла visitors.txt (кб) - ");
$size=filesize($filename)/1024;
$count=round($size, 2);
echo("$count");
echo("<hr>");
include($filename);
?>
</body>
</html>
