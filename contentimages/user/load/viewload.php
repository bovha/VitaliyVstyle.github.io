<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Статистика скачиваний</title>
<meta name="keywords" content="" >
<meta name="description" content="" >
<link rel="shortcut icon" href="AddsToolbarandButtons.png"  sizes="16x16" type="image/png">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<table id="templatemo" border="1" style="border-collapse: collapse;">
<?php
$file = "visitorsload.txt";
if (!file_exists($file)) {
   $fp = fopen($file, "w+");
   fclose($fp);
}
echo("<caption>");
if (is_writable($file))
    echo("Есть права на запись в visitorsload.txt<br>");
$size = filesize($file)/1024;
$count = round($size, 2);
echo("Размер файла visitorsload.txt (кб) - $count</caption>");
echo("<tbody align='left'><tr><th>дата время<hr>ip локаль<hr>юзер-агент</th><th>файл</th></tr>");
require($file);
echo("</tbody>");
?>
</table>
</body>
</html>
