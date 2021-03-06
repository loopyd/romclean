Param(
   [Parameter(Mandatory=$true)]
   [string]$FolderPath
) #end param
Write-Host -NoNewline "Initializing to fix filenames ..." -ForegroundColor Cyan
$ScriptPath = Split-Path $MyInvocation.MyCommand.Path
Push-Location $ScriptPath
Unblock-File -Path "$ScriptPath\fixnames.ps1"
Unblock-File -Path "$ScriptPath\Remove-InvalidFileNameChars.ps1"
$items = Get-ChildItem -Path $FolderPath -Recurse
Write-Host "`r Fixing files in $($FolderPath) ..." -ForegroundColor Yellow
Write-Host ""
Start-Sleep -s 3
foreach ($item in $items) {
    $NewName = & "$ScriptPath\Remove-InvalidFileNameChars.ps1" -Name $item.Name
	$NewName = $($NewName -replace "(!|\||\[|\]|`#)","")
	$bytes =[system.Text.Encoding]::UTF8.GetBytes($NewName)
	$NewName = [System.Text.Encoding]::ASCII.GetString($bytes)
    $item | Rename-Item -NewName $NewName
	$OUT = "$($NewName) proccesed".PadRight(79,"_")
	Write-Host -NoNewline "`r $($OUT)" -ForegroundColor Green
}
Pop-Location
Start-Sleep -s 3
