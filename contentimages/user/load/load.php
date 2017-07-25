<?php
$str = urldecode(getenv("QUERY_STRING"));
if ($str) {
    $patch = "../files/$str";
    $mime = mime_content_type($patch);
    $size = filesize($patch);
    header("Content-Type: $mime");
    header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    header("Content-Length: $size");
    header("Content-Disposition: attachment; filename=\"$str\"");
    readfile($patch);
} else
    $str = "N/a";
$ip = getenv("REMOTE_ADDR");
date_default_timezone_set("Europe/Moscow");
$datetime = date("d/F/y H.i:s", time());
$user = getenv("HTTP_USER_AGENT");
if (!$user)
    $user = "N/a";
$locale = getenv("HTTP_ACCEPT_LANGUAGE");
$file = "visitorsload.txt";
$filesiz = filesize($file);
if (!file_exists($file) || $filesiz/1024 > 3072)
    $fp = fopen($file, "w+");
else
    $fp = fopen($file, "r+");
if (flock($fp, LOCK_EX)) {
    rewind($fp);
    $old = null;
    if ($filesiz !== 0)
        $old = fread($fp, $filesiz);
    rewind($fp);
    fwrite($fp, "<tr><td><span>$datetime</span><hr>$ip <span>$locale</span><hr>$user</td><td>$str</td></tr>\r\n$old");
    flock($fp, LOCK_UN);
}
fclose($fp);
?>
