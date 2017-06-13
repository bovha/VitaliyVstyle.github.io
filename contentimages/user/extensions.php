<?php
if (getenv("QUERY_STRING") != "")
    $string=getenv("QUERY_STRING");
else
    $string="---";
$ipreal=getenv("HTTP_X_REAL_IP");
$ipfor=getenv("HTTP_X_FORWARDED_FOR");
$ip=getenv("REMOTE_ADDR");
$datetime=date("m/d/y G.i:s", time());
$user=getenv("HTTP_USER_AGENT");
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
$filename = "visitorsextensions.txt";
if (filesize($filename)/1024 > 3072)
    $fp=fopen($filename, "w+");
else
    $fp=fopen($filename, "a+");
fwrite($fp, "<tr><td>$page</td><td>$string</td><td>$ipreal</td><td>$ipfor</td><td>$ip</td><td>$user</td><td>$locale</td><td>$datetime</td></tr>\r\n");
fclose($fp);
?>
