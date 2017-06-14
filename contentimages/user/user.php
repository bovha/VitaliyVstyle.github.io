<?php
$str=getenv("QUERY_STRING");
if (!$str)
    $str="---";
$ipreal=getenv("HTTP_X_REAL_IP");
$ipfor=getenv("HTTP_X_FORWARDED_FOR");
$ip=getenv("REMOTE_ADDR");
$datetime=date("m/d/y G.i:s", time());
$user=getenv("HTTP_USER_AGENT");
if (!$user)
    $user="---";
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
if (!$page)
    $page="---";
$file="visitors.txt";
$filesiz=filesize($file);
if (!file_exists($file) || $filesiz/1024 > 3072)
    $fp=fopen($file, "w+");
else
    $fp=fopen($file, "r+");
if (flock($fp, LOCK_EX)) {
$old=fread($fp, $filesiz);
fseek($fp, 0, SEEK_SET);
fwrite($fp, "<tr><td>$page</td><td>$str</td><td>$ipreal</td><td>$ipfor</td><td>$ip</td><td>$user</td><td>$locale</td><td>$datetime</td></tr>\r\n$old");
flock($fp, LOCK_UN);
}
fclose($fp);
?>
