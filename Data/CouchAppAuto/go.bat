@ECHO OFF

set AppName=CouchApp05
REM You can put all your apps in one database. In other
REM words, you don't have to change the DbName each time
REM you create a new App
set DbName=couchapps

call couchapp generate %AppName%
cd %AppName%
echo function(doc, req) {  return "Prog282 CouchApp" } > shows\hello.js
call couchapp push %DbName%
start http://ccalvert:foobar@127.0.0.1:5984/%DbName%/_design/%AppName%/_show/hello
