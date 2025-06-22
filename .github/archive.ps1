$AppProps = convertfrom-stringdata (get-content ./pack.properties -raw)
$filename = "{0}-{1}-{2}.zip" -f $AppProps.name, $AppProps.mc_version, $AppProps.version
git archive -o $filename --add-file "./LICENSE" HEAD:src
