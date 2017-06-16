<?php
$str=getenv("QUERY_STRING");
if ($str) {
    if (strrpos($str, ".xpi"))
        header("location: https://vitaliyvstyle.github.io/extensions/$str");
} else
    $str="---";
$ipreal=getenv("HTTP_X_REAL_IP");
$ipfor=getenv("HTTP_X_FORWARDED_FOR");
$ip=getenv("REMOTE_ADDR");
date_default_timezone_set("Europe/Moscow");
$datetime=date("d/F/y H.i:s", time());
$user=getenv("HTTP_USER_AGENT");
if (!$user)
    $user="---";
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
if (!$page)
    $page="---";
$file="visitorsextensions.txt";
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
