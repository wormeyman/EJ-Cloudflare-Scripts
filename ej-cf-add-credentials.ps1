# Updated: 2021-01-08 13:29:46
# --
# Notes:
# https://www.tachytelic.net/2019/03/powershell-environment-variables/#MachineScoped
# Allow powershell scripts:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
# --
# RUN THIS SCRIPT AS ADMIN TO WRITE ENVIORMENT VARIABLES
Write-Host -ForegroundColor Green "RUN THIS SCRIPT AS ADMIN TO WRITE ENVIORMENT VARIABLES"
# --
$email = Read-Host 'What is your CF Email?'
$key = Read-Host 'What is your CF api key?' #https://dash.cloudflare.com/profile/api-tokens
# --
Set-Variable CF_API_EMAIL=$email
Set-Variable CF_API_KEY=$key
[System.Environment]::SetEnvironmentVariable('CF_API_EMAIL',$email,[System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('CF_API_KEY',$key,[System.EnvironmentVariableTarget]::Machine)
# --
