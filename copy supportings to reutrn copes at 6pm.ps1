# Define the source and destination paths
$sourcePath = "X:\"
$destinationPath = "Y:\RETURN COPIES"

# Get files with prefix "SR" or "SC" from the source path that were created today
$filesToCopy = Get-ChildItem $sourcePath -File | 
    Where-Object { ($_.Name -like "SR*" -or $_.Name -like "SC*") -and $_.CreationTime.Date -eq (Get-Date).Date }

# Copy files to the destination path if they do not already exist
foreach ($file in $filesToCopy) {
    $destinationFile = Join-Path $destinationPath $file.Name
    if (-not (Test-Path $destinationFile)) {
        Copy-Item $file.FullName $destinationPath
    } else {
        Write-Host "File $file already exists in the destination folder. Skipping..."
    }
}