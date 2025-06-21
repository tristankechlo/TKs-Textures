$json = Get-Content "./pack.json" | ConvertFrom-Json
$filename = "{0}-{1}-{2}.zip" -f $json.name, $json.mc_version, $json.version
git archive -o $filename --add-file "./LICENSE" HEAD:src
