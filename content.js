function EmailOpen() {
var win = window.open("", "_blank");
win.document.open();
var name = "vitaliyv";
var ml = "mail";
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'><title>Адрес электронной почты</title><link rel='shortcut icon' href='/contentimages/Email.png'  sizes='16x16' type='image/png'><style type='text/css'>html {height:100%;background-color:#000000;background-repeat:no-repeat;background-size:cover;background-attachment:fixed;background-image:url('/images/colorful.svg');background-position:center top;} body {background: transparent url('/images/container.png') repeat scroll left top;color:#ffbf23;font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif;text-align:center;position:relative;min-width:330px;max-width:50em;margin:4em auto;border:1px solid rgba(255,255,255,0.5);padding:3em;} a:link, a:visited {color:#00d9b5;} a:active, a:hover {color:#00ffd5;} a:active {opacity:0.8;} img:-moz-broken, img:-moz-user-disabled, img:-moz-loading {visibility:hidden!important;}</style></head><body><div><img src='/contentimages/Email.svg' style='padding-right: 5px;border:none;'>В случае вопросов, пожеланий или проблем обращайтесь по электронной почте:</div><br><div><a href='mailto:" + name + ".style@" + ml + ".ru'>" + name + ".style@" + ml + ".ru</a></div><div style='text-align:right;'><strong>Vitaliy V.</strong></div></body></html>");
win.document.close();
}
(function () {
if (!window.XMLHttpRequest)
    return;
var req;
try {
    req = new XMLHttpRequest();
} catch (e) {}
if (!req)
    return;
var ref = window.document.referrer;
var osc = window.navigator.oscpu;
var app = window.navigator.appVersion;
var uri = window.location.href;
var os = null;
if (osc) os = osc;
else if (app) os = app;
else os = "N/a";
if (!ref) ref = "N/a";
if (!uri) uri = "N/a";
if (!window.encodeURIComponent) {
    if (!window.escape) {
        ref = "N/a";
        uri = "N/a";
    } else {
        if (ref !== "N/a") ref = escape(ref);
        if (uri !== "N/a") uri = escape(uri);
    }
} else {
    if (ref !== "N/a") ref = encodeURIComponent(ref);
    if (uri !== "N/a") uri = encodeURIComponent(uri);
}
req.open("GET", "https://vitaliyv.000webhostapp.com/user/user.php?" + uri + "..." + ref + "..." + os, true);
req.timeout = 20000;
req.onerror = function () {
    req.abort();
};
req.ontimeout = function () {
    req.abort();
};
req.send(null);
})();
