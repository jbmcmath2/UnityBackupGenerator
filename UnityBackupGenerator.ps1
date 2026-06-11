param(
    $sourceFolder,
    $destFolder
)
$sourceName = Split-Path -Path $sourceFolder -Leaf
$todaysDate = Get-Date -Format MM-dd-yyyy-HH-mm-ss

if(!(Test-Path $destFolder)){
    Write-Error "Destination folder does not exist"
    Exit
}
else{
    Write-Output "Destination folder valid"
}
if(Test-Path $destFolder\$sourceName-$todaysDate-back-up){
    Write-Error "Destination folder contains a back-up with the same name"
    Exit
}
else{
    New-Item -ItemType Directory -Path $destFolder -Name $sourceName-$todaysDate-back-up
    robocopy $sourceFolder $destFolder\$sourceName-$todaysDate-back-up /MIR /mt /e /z /log+:$destFolder\$sourceName-$todaysDate-back-up\$todaysdate.txt /XD "Library" "Temp" "Logs" ".vs" ".vscode"
    Write-Output "Mirror Complete"
}
Write-Host "Unity Back-up Script Complete" -ForegroundColor Green