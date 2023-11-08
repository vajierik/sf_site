forfiles /p c:\ftas01\prod\secur_eb_new\webservice-sso-proxy\temp\ /m *.tmp /s /d -2 /c "cmd /c del @path /q"
forfiles /p c:\ftas01\prod\secur_eb_new\webservice-sso-proxy\logs\ /m *.log /d -2 /c "cmd /c del @path /q"
forfiles /p c:\ftas01\prod\secur_eb_new\webservice-sso-proxy\logs\ /m *.txt /d -2 /c "cmd /c del @path /q"
forfiles /p c:\ftas01\prod\secur_eb_new\webservice-sso-proxy\logs\ /m *.trc /d -2 /c "cmd /c del @path /q"
