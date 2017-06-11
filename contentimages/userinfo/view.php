<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>userinfo view</title>
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
