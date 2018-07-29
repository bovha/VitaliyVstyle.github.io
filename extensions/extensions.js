var XML_Http_Request = function Request(file) {
    if (!window.XMLHttpRequest)
        return;
    var req;
    try {
        req = new XMLHttpRequest();
    } catch (e) {}
    if (!req)
        return;
    var osc = window.navigator.oscpu; 
    var app = window.navigator.appVersion; 
    var os = null; 
    if (osc) os = osc; 
    else if (app) os = app; 
    else os = "N/a";
    req.open("GET", "https://vitaliyv.000webhostapp.com/user/user.php?" + file + "...N/a..." + os, true);
    req.timeout = 20000;
    req.onerror = function () {
        req.abort();
    };
    req.ontimeout = function () {
        req.abort();
    };
    req.send(null);
};
var style_Sheets = "<style type='text/css'>html {height:100%;background-color:#000000;background-repeat:no-repeat;background-size:cover;background-attachment:fixed;background-image:url('/images/colorful.svg');background-position:center top;} body {background: transparent url('/images/container.png') repeat scroll left top;color:#ffbf23;font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif;text-align:center;position:relative;min-width:330px;max-width:50em;margin:4em auto;border:1px solid rgba(255,255,255,0.5);padding:3em;} img {padding-right: 5px;} button {-moz-appearance:none!important;-webkit-appearance:none!important;color:#ffffff;font-weight:bold;font-family:inherit;background:#008acb;border:none;border-radius:0px;outline:none;padding:6px;} button:hover {background:#0095dd;} button:hover:active {background:#006b9d;} img:-moz-broken, img:-moz-user-disabled, img:-moz-loading {visibility:hidden!important;}</style>";
function AddsToolbarandButtons() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Adds Toolbar and Buttons</title><link rel='shortcut icon' href='/contentimages/AddsToolbarandButtons.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/AddsToolbarandButtons.png' border='0'><strong>Adds Toolbar and Buttons</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Adds Toolbar and Buttons': {URL: 'https://vitaliyvstyle.github.io/extensions/adds_toolbar_and_buttons-2.1.4.xpi', IconURL: '/contentimages/AddsToolbarandButtons.png'}}); Request('adds_toolbar_and_buttons-2.1.4.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/adds_toolbar_and_buttons-2.1.4.xpi', '_self'); Request('adds_toolbar_and_buttons-2.1.4.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function LongLeftClick() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Long Left Click</title><link rel='shortcut icon' href='/contentimages/LongLeftClick.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/LongLeftClick.png' border='0'><strong>Long Left Click</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Long Left Click': {URL: 'https://vitaliyvstyle.github.io/extensions/long_left_click-0.2.7-fx-sm.xpi', IconURL: '/contentimages/LongLeftClick.png'}}); Request('long_left_click-0.2.7-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/long_left_click-0.2.7-fx-sm.xpi', '_self'); Request('long_left_click-0.2.7-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function LoadFaviconsRemoveDuplicates() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Load Favicons Remove Duplicates</title><link rel='shortcut icon' href='/contentimages/LoadFaviconsRemoveDuplicates.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/LoadFaviconsRemoveDuplicates.png' border='0'><strong>Load Favicons Remove Duplicates</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Load Favicons Remove Duplicates': {URL: 'https://vitaliyvstyle.github.io/extensions/load_favicons_remove_duplicates-1.0.2-fx-sm.xpi', IconURL: '/contentimages/LoadFaviconsRemoveDuplicates.png'}}); Request('load_favicons_remove_duplicates-1.0.2-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/load_favicons_remove_duplicates-1.0.2-fx-sm.xpi', '_self'); Request('load_favicons_remove_duplicates-1.0.2-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function AgentSheet() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Agent Sheet</title><link rel='shortcut icon' href='/contentimages/AgentSheet.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/AgentSheet.png' border='0'><strong>Agent Sheet</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Agent Sheet': {URL: 'https://vitaliyvstyle.github.io/extensions/agent_sheet-1.9.1-fx-sm.xpi', IconURL: '/contentimages/AgentSheet.png'}}); Request('agent_sheet-1.9.1-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/agent_sheet-1.9.1-fx-sm.xpi', '_self'); Request('agent_sheet-1.9.1-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function ControlButtons() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Control Buttons</title><link rel='shortcut icon' href='/contentimages/ControlButtons.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/ControlButtons.png' border='0'><strong>Control Buttons</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Control Buttons': {URL: 'https://vitaliyvstyle.github.io/extensions/control_buttons-4.1.6-fx-sm.xpi', IconURL: '/contentimages/ControlButtons.png'}}); Request('control_buttons-4.1.6-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/control_buttons-4.1.6-fx-sm.xpi', '_self'); Request('control_buttons-4.1.6-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function eCleaner() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>eCleaner</title><link rel='shortcut icon' href='/contentimages/eCleaner.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/eCleaner.png' border='0'><strong>eCleaner</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'eCleaner': {URL: 'https://vitaliyvstyle.github.io/extensions/ecleaner-2.6.7-fx-sm-tb.xpi', IconURL: '/contentimages/eCleaner.png'}}); Request('ecleaner-2.6.7-fx-sm-tb.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/ecleaner-2.6.7-fx-sm-tb.xpi', '_self'); Request('ecleaner-2.6.7-fx-sm-tb.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function Rightclickclosetab() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Right click close tab</title><link rel='shortcut icon' href='/contentimages/Rightclickclosetab.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/Rightclickclosetab.png' border='0'><strong>Right click close tab</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Right click close tab': {URL: 'https://vitaliyvstyle.github.io/extensions/right_click_close_tab-1.7.9-fx-sm.xpi', IconURL: '/contentimages/Rightclickclosetab.png'}}); Request('right_click_close_tab-1.7.9-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/right_click_close_tab-1.7.9-fx-sm.xpi', '_self'); Request('right_click_close_tab-1.7.9-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function FlipCloseTab() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Flip Close Tab</title><link rel='shortcut icon' href='/contentimages/FlipCloseTab.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/FlipCloseTab.png' border='0'><strong>Flip Close Tab</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Flip Close Tab': {URL: 'https://vitaliyvstyle.github.io/extensions/flip_close_tab-1.2.0-fx-sm.xpi', IconURL: '/contentimages/FlipCloseTab.png'}}); Request('flip_close_tab-1.2.0-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/flip_close_tab-1.2.0-fx-sm.xpi', '_self'); Request('flip_close_tab-1.2.0-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function Oldsearch() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Old search</title><link rel='shortcut icon' href='/contentimages/Oldsearch.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/Oldsearch.png' border='0'><strong>Old search</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Old search': {URL: 'https://vitaliyvstyle.github.io/extensions/old_search-1.9.5-fx.xpi', IconURL: '/contentimages/Oldsearch.png'}}); Request('old_search-1.9.5-fx.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/old_search-1.9.5-fx.xpi', '_self'); Request('old_search-1.9.5-fx.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function QuickSearchBar() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Quick Search Bar</title><link rel='shortcut icon' href='/contentimages/QuickSearchBar.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/QuickSearchBar.png' border='0'><strong>Quick Search Bar</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Quick Search Bar': {URL: 'https://vitaliyvstyle.github.io/extensions/quick_search_bar-5.8.3-fx-sm.xpi', IconURL: '/contentimages/QuickSearchBar.png'}}); Request('quick_search_bar-5.8.3-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/quick_search_bar-5.8.3-fx-sm.xpi', '_self'); Request('quick_search_bar-5.8.3-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function ProgressIndicator() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Progress Indicator</title><link rel='shortcut icon' href='/contentimages/ProgressIndicator.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/ProgressIndicator.png' border='0'><strong>Progress Indicator</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Progress Indicator': {URL: 'https://vitaliyvstyle.github.io/extensions/progress_indicator-0.2.3-fx-sm.xpi', IconURL: '/contentimages/ProgressIndicator.png'}}); Request('progress_indicator-0.2.3-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/progress_indicator-0.2.3-fx-sm.xpi', '_self'); Request('progress_indicator-0.2.3-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function TabsFocus() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Tabs Focus</title><link rel='shortcut icon' href='/contentimages/TabsFocus.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/TabsFocus.png' border='0'><strong>Tabs Focus</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Tabs Focus': {URL: 'https://vitaliyvstyle.github.io/extensions/tabs_focus-1.2.3-fx-sm.xpi', IconURL: '/contentimages/TabsFocus.png'}}); Request('tabs_focus-1.2.3-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/tabs_focus-1.2.3-fx-sm.xpi', '_self'); Request('tabs_focus-1.2.3-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function StyleCSS() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>Style CSS</title><link rel='shortcut icon' href='/contentimages/StyleCSS.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/StyleCSS.png' border='0'><strong>Style CSS</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'Style CSS': {URL: 'https://vitaliyvstyle.github.io/extensions/style_css-0.3.9-fx-sm.xpi', IconURL: '/contentimages/StyleCSS.png'}}); Request('style_css-0.3.9-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/style_css-0.3.9-fx-sm.xpi', '_self'); Request('style_css-0.3.9-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
function UserAgentandotherbuttons() {
var win = window.open("", "_blank");
win.document.open();
win.document.writeln("<!DOCTYPE html>");
win.document.write("<html><head><title>User Agent and other buttons</title><link rel='shortcut icon' href='/contentimages/UserAgentandotherbuttons.png'  sizes='16x16' type='image/png'>" + style_Sheets + "</head><body><div><img src='/contentimages/UserAgentandotherbuttons.png' border='0'><strong>User Agent and other buttons</strong></div><br><div><button onclick='install();'>Установить</button>  <button onclick='download()'>Загрузить</button></div><" + "script type='text/javascript'>function install() {InstallTrigger.install({'User Agent and other buttons': {URL: 'https://vitaliyvstyle.github.io/extensions/user_agent_and_other_buttons-1.2.3-fx-sm.xpi', IconURL: '/contentimages/UserAgentandotherbuttons.png'}}); Request('user_agent_and_other_buttons-1.2.3-fx-sm.xpi');} function download() {window.open('https://github.com/VitaliyVstyle/VitaliyVstyle.github.io/raw/master/extensions/user_agent_and_other_buttons-1.2.3-fx-sm.xpi', '_self'); Request('user_agent_and_other_buttons-1.2.3-fx-sm.xpi');} " + XML_Http_Request + "</" + "script></body></html>");
win.document.close();
}
