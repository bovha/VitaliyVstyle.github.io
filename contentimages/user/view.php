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
<table id="templatemo" border="1" style="border-collapse: collapse;">
<?php
$filename = "visitors.txt";
if (!file_exists($filename)) {
   $fp=fopen($filename, "w+");
   fclose($fp);
}
echo("<caption>");
if (is_writable($filename))
    echo("Есть права на запись в visitors.txt<br>");
$size=filesize($filename)/1024;
$count=round($size, 2);
echo("Размер файла visitors.txt (кб) - $count</caption>");
echo("<tbody align='left'><tr><th>страница</th><th>файл</th><th>ip real</th><th>ip forwarded</th><th>ip</th><th>юзер агент</th><th>локаль</th><th>дата, время</th></tr>");
require($filename);
echo("</tbody>");
?>
</table>
</body>
</html>
