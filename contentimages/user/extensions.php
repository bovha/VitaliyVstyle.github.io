<?php
if (getenv("QUERY_STRING") != "") {
    $string=getenv("QUERY_STRING");
    header("location: https://vitaliyvstyle.github.io/extensions/$string");
} else
    $string="---";
$ipreal=getenv("HTTP_X_REAL_IP");
$ipfor=getenv("HTTP_X_FORWARDED_FOR");
$ip=getenv("REMOTE_ADDR");
$datetime=date("m/d/y G.i:s", time());
$user=getenv("HTTP_USER_AGENT");
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
$filename="visitorsextensions.txt";
$filesiz=filesize($filename);
if (!file_exists($filename) || $filesiz/1024 > 3072)
    $fp=fopen($filename, "w+");
else
    $fp=fopen($filename, "r+");
if (flock($fp, LOCK_EX)) {
$old=fread($fp, $filesiz);
fseek($fp, 0, SEEK_SET);
fwrite($fp, "<tr><td>$page</td><td>$string</td><td>$ipreal</td><td>$ipfor</td><td>$ip</td><td>$user</td><td>$locale</td><td>$datetime</td></tr>\r\n$old");
flock($fp, LOCK_UN);
}
fclose($fp);
?>
