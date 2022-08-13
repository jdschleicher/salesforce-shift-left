param(
    $auth_key_base64,
    $auth_clientid,
    $auth_username,
    $auth_org_url,
    $devhub_alias
)

$key_file_name = [Guid]::NewGuid().guid
$path_to_key_file = "$((get-location).path)/$key_file_name"

Write-Host "AUTHENTICATING SALESFORCE ORG (VIA JWT)" 

New-Item -Type File $path_to_key_file | Out-Null
$decoded_cicd_devhub = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($auth_key_base64))  
$decoded_cicd_devhub | Out-File $path_to_key_file

$auth_result_json = $(sfdx auth:jwt:grant --clientid $auth_clientid --jwtkeyfile $PATH_TO_KEY_FILE --username $auth_username --setalias $devhub_alias --instanceurl $auth_org_url -d --json)
Write-Host $auth_result_json
$auth_result = $auth_result_json| ConvertFrom-Json
$auth_result.status


          