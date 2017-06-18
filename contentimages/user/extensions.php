<?php
$str=getenv("QUERY_STRING");
if ($str) {
    if (strrpos($str, ".xpi"))
        header("location: https://vitaliyvstyle.github.io/extensions/$str");
} else
    $str="N/a";
$ip=getenv("REMOTE_ADDR");
date_default_timezone_set("Europe/Moscow");
$datetime=date("d/F/y H.i:s", time());
$user=getenv("HTTP_USER_AGENT");
if (!$user)
    $user="N/a";
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
if (!$page)
    $page="N/a";
$file="visitorsextensions.txt";
$filesiz=filesize($file);
if (!file_exists($file) || $filesiz/1024 > 3072)
    $fp=fopen($file, "w+");
else
    $fp=fopen($file, "r+");
if (flock($fp, LOCK_EX)) {
rewind($fp);
$old=fread($fp, $filesiz);
rewind($fp);
fwrite($fp, "<tr><td>$datetime | $ip<br>$page | $locale<br>$user</td><td>$str</td></tr>\r\n$old");
flock($fp, LOCK_UN);
}
fclose($fp);
?>
