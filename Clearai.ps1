# Windows AI feature cleanup

Write-Host '
Modifies Windows features and registry policies. Use at your own risk and the author is not responsible for unexpected changes from using this script.
Do you accept - [Y] Yes or [N] No
'
#disclaimer

$consent = Read-Host "Do you have permission to remove ai features? (Y/N)"
#asks permission to proceed

if ($consent -ne 'Y' -and $consent -ne 'y') {
    Write-Host "Program terminated. Permission not granted."
    exit
}
#disclaimer

Disable-WindowsOptionalFeature -Online -FeatureName "Recall" -Remove
#removing MS Recall

Get-WindowsOptionalFeature -Online -FeatureName "Recall"
#verify MS Recall removal

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableClickToDo /t REG_DWORD /d 1 /f
#disabling Click to Do

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v RemoveMicrosoftCopilotApp /t REG_DWORD /d 1 /f
#configuring Copilot removal policy

gpupdate /force
#refresh Group Policy

Get-WindowsOptionalFeature -Online -FeatureName "Recall"
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableClickToDo
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v RemoveMicrosoftCopilotApp
#verify AI feature configuration
