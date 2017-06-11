<?php
if (getenv("QUERY_STRING") != "")
    $string=getenv("QUERY_STRING");
else
    $string="нет";
$ipreal=getenv("HTTP_X_REAL_IP");
$ipfor=getenv("HTTP_X_FORWARDED_FOR");
$ip=getenv("REMOTE_ADDR");
$datetime=date("m/d/y G.i:s", time());
$user=getenv("HTTP_USER_AGENT");
$locale=getenv("HTTP_ACCEPT_LANGUAGE");
$page=getenv("HTTP_REFERER");
$filename = "visitors.txt";
if (filesize($filename)/1024 > 3072)
    $fp=fopen($filename, "w+");
else
    $fp=fopen($filename, "a+");
fputs($fp, "<b>страница:</b> $page <b>файл:</b> $string <b>ip real:</b> $ipreal <b>ip forwarded:</b> $ipfor <b>ip:</b> $ip <b>юзер агент:</b> $user <b>локаль:</b> $locale <b>дата:</b> $datetime <hr>\r\n");
fclose($fp);
?>
