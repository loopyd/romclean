Param(
   [Parameter(Mandatory=$true)]
   [string]$FolderPath
) #end param
Write-Host --NoNewline "Initializing to fix filenames ..." -ForegroundColor Cyan
$ScriptPath = Split-Path $MyInvocation.MyCommand.Path
Push-Location $ScriptPath
Unblock-File -Path "$ScriptPath\fixnames.ps1"
Unblock-File -Path "$ScriptPath\Remove-InvalidFileNameChars.ps1"
$items = Get-ChildItem -Path $FolderPath -Recurse
$enc = [system.Text.Encoding]::ASCII
Write-Host "`r Fixing files in $($FolderPath) ..." -ForegroundColor Yellow
Write-Host ""
Start-Sleep -s 3
foreach ($item in $items) {
    $NewName = & "$ScriptPath\Remove-InvalidFileNameChars.ps1" -Name $item.Name
	$NewName -replace 
    $item | Rename-Item -NewName $NewName
	$NewName = $enc.GetBytes($NewName)
	$OUT = "$($NewName) proccesed".PadRight(65,"_")
	Write-Host -NoNewline "`r $($OUT) processed" -ForegroundColor Green
}
Pop-Location
Start-Sleep -s 3
