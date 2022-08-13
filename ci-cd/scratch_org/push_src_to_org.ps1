param($org_alias)

echo "PUSHING SOURCE TO SCRATCH ORG"

$push_src_to_scratch_result_json = $(sfdx force:source:push --targetusername $org_alias --force --loglevel trace --json )
Write-Host $push_src_to_scratch_result_json
$push_src_to_scratch_result = $push_src_to_scratch_result_json| ConvertFrom-Json
$push_src_to_scratch_result.result.status