$sourcePath = "X:\"
$destinationPath = "Y:\RETURN COPIES"
$endTime = Get-Date "7:00 PM"

while ((Get-Date) -le $endTime) {
    Get-ChildItem -Path $sourcePath -Filter "SC*" -Recurse | Where-Object { $_.CreationTime.Date -eq (Get-Date).Date } | Copy-Item -Destination $destinationPath -Force
    Get-ChildItem -Path $sourcePath -Filter "SR*" -Recurse | Where-Object { $_.CreationTime.Date -eq (Get-Date).Date } | Copy-Item -Destination $destinationPath -Force
    Start-Sleep -Seconds 1  # Check every Second
}