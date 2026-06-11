$todaysDate = Get-Date -Format MM-dd-yyyy
$sourceFolder = "FolderA"
$destFolder = "FolderB"

if(!(Test-Path $destFolder)){
    Write-Error "Destination folder does not exist"
    Exit
}
else{
    Write-Output "Destination folder valid"
}
if(Test-Path $destFolder\$todaysDate-back-up){
    Write-Error "Destination folder contains a back-up with the same name"
    Exit
}
else{
    New-Item -ItemType Directory -Path $destFolder -Name $todaysDate-back-up
    robocopy $sourceFolder $destFolder\$todaysDate-back-up /MIR /mt /e /z /log+:$destFolder\$todaysDate-back-up\$todaysdate.txt /XD "Library" "Temp" "Logs" ".vs" ".vscode"
    Write-Output "Mirror Complete"
}
Write-Host "Unity Mirror Script Complete" -ForegroundColor Green