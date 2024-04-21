# Power by Akasha Terminal

![展示图](https://duckduckstudio.github.io/power_by_akasha_terminal/Power_by_Akasha_Terminal.png)

Turn your Windows terminal into the Akasha Terminal!<br>
LICENSE: MIT<br>

[中文](https://github.com/DuckDuckStudio/power_by_akasha_terminal/blob/main/README.md) | English

## Effects

[In PowerShell]<br>
![A diagram showing the effect in PowerShell](https://duckduckstudio.github.io/power_by_akasha_terminal/PowerShell中的效果展示图.png)<br>

[In cmd]<br>
![A diagram showing the effect in cmd](https://duckduckstudio.github.io/power_by_akasha_terminal/cmd中的效果展示图.png)<br>

## How to achieve

### PowerShell
* Permanent<br>
  * Originally no configuration file<br>
    You can download `Microsoft.PowerShell_profile.ps1` in the [Repository Releases](https://github.com/DuckDuckStudio/power_by_akasha_terminal/releases/)，Then place this file in `C:\Users\user_name\Documents\WindowsPowerShell\`.(Create a new folder if it doesn't exist)<br>
      This code can be added if you wish to change the title along with it:<br>
      ```powershell
      $host.UI.RawUI.WindowTitle = "Akasha Terminal"
      ```
      * In case of an error<br>
      If an error like this occurs:<br>
      ```
      . : File C:\Users\user_name\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.
      ```
      Please try:<br>
        * Start PowerShell as Administrator<br>
        * Run the following command to view the current enforcement policy:<br>
      ```powershell
      Get-ExecutionPolicy
      ```
      If the returned result is not `RemoteSigned` or `Unrestricted`, then PowerShell is running an execution policy that restricts script execution. You can use the following command to change the execution policy:<br>
      ```powershell
      Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
      ```
      This will allow the current user to run self-signed script files locally without asking the user for confirmation.<br>
      Finally, a restart of PowerShell should fix the problem.<br>
      * If you encounter any other errors please submit Issues<br>
  * Originally had a configuration file<br>
  You can run the following command to open the PowerShell configuration file:<br>
  ```powershell
  notepad $PROFILE
  ```
  Add the following code to the open configuration file:
  ```powershell
  function prompt {
    Write-Host "[Power by Akasha Terminal] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
  }
  # Code by DuckStudio
  # Version 1.0
  ```
  Save and close the configuration file and restart PowerShell.<br>
  You can add the following code if you want to change the title along with it:<br>
  ```powershell
  $host.UI.RawUI.WindowTitle = "Akasha Terminal"
  ```
* one-time-only<br>
If you don't want to have `[Power by Akasha Terminal]` every time, and only want the current PowerShell to have `[Power by Akasha Terminal]`, then you can run the following command in PowerShell:
```powershell
function prompt {
    Write-Host "[Power by Akasha Terminal] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}
# Code by DuckStudio
# Version 1.0
# Note: this is multi-line code
```
You can add the following code if you want to change the title along with it:<br>
```powershell
$host.UI.RawUI.WindowTitle = "Akasha Terminal"
```
This will only work in the current PowerShell session.<br>

### cmd

* one-time-only<br>
If you don't want to have `[Power by Akasha Terminal]` every time, and only want the current cmd to have `[Power by Akasha Terminal]`, then you can run the following command in cmd:<br>
```bash
prompt [Power by Akasha Terminal] $P$G
```
You can add the following code if you want to change the title along with it:<br>
```bash
title Akasha Terminal
```
This will only work in the current cmd session.<br>

## How to cancel if set to permanent

1. Run the following command to open the PowerShell configuration file:<br>
  ```powershell
  notepad $PROFILE
  ```
2. Remove the code added in the configuration file<br>
3. Save and close the configuration file and restart PowerShell.<br>

## How to change the content

~~What? You don't like Akasha Terminal?~~<br>
Just change the `[Power by Akasha Terminal]` part of the code.<br>

> [!NOTE]
> Note that the PowerShell code has a single space after the content.<br>

Example:<br>
* In PowerShell<br>
```powershell
function prompt {
    Write-Host "[Power by Nahida] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}
# Code by DuckStudio
# Version 1.0
# Note: this is multi-line code
```
Effect:<br>
![Power by Nahida](https://duckduckstudio.github.io/power_by_akasha_terminal/PowerShell-纳西妲.png)<br>
* In cmd<br>
```bash
prompt [Power by Nahida] $P$G
```
Effect:<br>
![Power by Nahida](https://duckduckstudio.github.io/power_by_akasha_terminal/cmd-纳西妲.png)<br>

## About translation

Use DeepL to assist with translation.<br>