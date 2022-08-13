param($devhub_alias, $scratch_org_alias)

Write-Host "CREATING SCRATCH ORG"

$create_scratch_result_json = $(sfdx force:org:create --targetusername $devhub_alias --setdefaultusername --definitionfile config/project-scratch-def.json --wait 15 --durationdays 1 -a $scratch_org_alias --json )
Write-Host $create_scratch_result_json
$create_scratch_result = $create_scratch_result_json| ConvertFrom-Json
$create_scratch_result.result.status
