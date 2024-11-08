$folder1 = "Y:\Booth_return"
$folder2 = "Y:\Office_return"

$watcher1 = New-Object System.IO.FileSystemWatcher
$watcher1.Path = $folder1
$watcher1.IncludeSubdirectories = $true
$watcher1.EnableRaisingEvents = $true

$action1 = {
    $path = $Event.SourceEventArgs.FullPath
    $name = $Event.SourceEventArgs.Name
    Write-Host "New file added in Folder 1: $name"
    
    [System.Windows.Forms.MessageBox]::Show("File added in Booth_return: $name", "File Notification")
}

Register-ObjectEvent -InputObject $watcher1 -EventName Created -SourceIdentifier File1 -Action $action1

$watcher2 = New-Object System.IO.FileSystemWatcher
$watcher2.Path = $folder2
$watcher2.IncludeSubdirectories = $true
$watcher2.EnableRaisingEvents = $true

$action2 = {
    $path = $Event.SourceEventArgs.FullPath
    $name = $Event.SourceEventArgs.Name
    Write-Host "New file added in Folder 2: $name"
    
    [System.Windows.Forms.MessageBox]::Show("File added in Office_return: $name", "File Notification")
}

Register-ObjectEvent -InputObject $watcher2 -EventName Created -SourceIdentifier File2 -Action $action2

Write-Host "Monitoring folders: $folder1, $folder2. Press Ctrl + C to stop."
while ($true) { Start-Sleep -Seconds 1 }
powershell -NoExit