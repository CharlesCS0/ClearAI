# ClearAI

# Disclaimer

Modifies Windows features and registry policies.
Use at your own risk and the author is not responsible for unexpected changes from using this script. Ensure a restart point is created

### Artificial Intelligence (AI) assisted

AI was used to assist with the development and understanding of the PowerShell commands.

# About ClearAI

ClearAI is a PowerShell script designed to disable or remove selected AI features within Windows 11.
These include
* Recall
* Click To Do
* Copilot

The core purpose of making the tool is to ensure better privacy on the Windows 11 device as Recall can take screenshots every 5 seconds and may contain sensitive information.

## How to use

Open PowerShell in administrator mode 

Then run the following commands

```
cd "C:\path\to\your\folder"

dir

.\Clearai.ps1

Modifies Windows features and registry policies. Use at your own risk and the author is not responsible for unexpected changes from using this script.
Do you accept - [Y] Yes or [N] No
```

[Y] - Allows the script to proceed with disabling/removing the selected Windows features and verifying the results when completed.

[N] - Does not allow the script to proceed.

# Requirements
- Windows 11
- Administrator permissions 

# Links

Recall and Click to do - https://support.microsoft.com/en-us/windows/ai/ai-features/retrace-your-steps-with-recall

Recall screenshots - https://thehackernews.com/2024/06/microsoft-revamps-controversial-ai.html
