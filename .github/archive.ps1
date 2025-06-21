$json = Get-Content "./pack.json" | ConvertFrom-Json
$filename = "{0}-{1}.zip" -f $json.name, $json.version
git archive -o $filename --add-file "./LICENSE" HEAD:src
