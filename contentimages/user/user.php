<?php
$str=getenv("QUERY_STRING");
if ($str) {
    $str=urldecode($str);
    $str=str_replace("...", "<hr>", $str);
} else $str="N/a<hr>N/a<hr>N/a";
$ip=getenv("REMOTE_ADDR");
date_default_timezone_set("Europe/Moscow");
$datetime=date("d/F/y H.i:s", time());
$user=getenv("HTTP_USER_AGENT");
if (!$user)
    $user="N/a";
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$file="visitors.txt";
$filesiz=filesize($file);
if (!file_exists($file) || $filesiz/1024 > 3072)
    $fp=fopen($file, "w+");
else
    $fp=fopen($file, "r+");
if (flock($fp, LOCK_EX)) {
rewind($fp);
$old=fread($fp, $filesiz);
rewind($fp);
fwrite($fp, "<tr><td><span>$datetime</span><hr>$ip <span>$locale</span><hr>$user</td><td>$str</td></tr>\r\n$old");
flock($fp, LOCK_UN);
}
fclose($fp);
?>
