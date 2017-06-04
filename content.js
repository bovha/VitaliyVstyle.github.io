function EmailOpen() {
var win = window.open("", "_blank");
win.document.open();
var name = "vitaliyv";
var ml = "mail";
win.document.write("<!DOCTYPE html><html><head><title>Email</title><link rel='shortcut icon' href='contentimages/Email.svg'  sizes='16x16' type='image/png'><style type='text/css'>body {background:#1b1b1b;color:#ffbf23;font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif;} a:link, a:visited {color:#00d9b5;} a:active, a:hover {color:#00ffd5;} a:active {opacity:0.8;}</style></head><body><div><img src='contentimages/Email.svg' style='padding-right: 5px;border:none;'><strong>Email</strong></div><br><div><a href='mailto:" + name + ".style@" + ml + ".ru'>" + name + ".style@" + ml + ".ru</a></div></body></html>");
win.document.close();
}