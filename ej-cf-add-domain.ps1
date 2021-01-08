# Updated: 2021-01-08 13:29:46
# Notes:
# https://community.cloudflare.com/t/help-in-using-flareclt-package-on-windows-10/45028/3
# https://support.cloudflare.com/hc/en-us/articles/360000841472
# --
# Allow powershell scripts:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
# --
$domain = Read-Host 'What is your domain to add?'
# --
.\flarectl.exe zone create --zone=$domain --jumpstart=false;
