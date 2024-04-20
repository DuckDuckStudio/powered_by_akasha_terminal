# Power by 虚空终端

把你的Windows终端变成虚空终端！<br>
LICENSE: MIT<br>

## 实现效果

[PowerShell中]<br>
![PowerShell中的效果展示图](https://duckduckstudio.github.io/power_by_akasha_terminal/PowerShell中的效果展示图.png)<br>

[cmd中]<br>
![cmd中的效果展示图](https://duckduckstudio.github.io/power_by_akasha_terminal/cmd中的效果展示图.png)<br>

## 如何实现

### PowerShell
* 永久<br>
  * 原先没有配置文件<br>
    你可以下载仓库发行版中的`Microsoft.PowerShell_profile.ps1`，然后将这个文件放在`C:\Users\user_name\Documents\WindowsPowerShell\`中。(文件夹不存在的话就新建文件夹)<br>
      * 如果出现错误<br>
      如果出现类似这样的错误：`. : File C:\Users\user_name\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.`<br>
      请尝试：<br>
        * 以管理员身份启动 PowerShell<br>
        * 运行以下命令以查看当前的执行策略：<br>
        ```powershell
        Get-ExecutionPolicy
        ```
        如果返回的结果不是 `RemoteSigned` 或 `Unrestricted`，则表示 PowerShell 正在运行限制了脚本执行的执行策略。你可以使用以下命令来更改执行策略：<br>
        ```powershell
        Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
        ```
        这将允许当前用户在本地运行自签名的脚本文件，而不会询问用户确认。<br>
        最后，重新启动 PowerShell 应该就可以解决这个问题了。<br>
      * 如果遇到其他错误请提交 Issues<br>
  * 原先存在配置文件<br>
  你可以运行以下命令打开 PowerShell 的配置文件：<br>
  ```powershell
  notepad $PROFILE
  ```
  在打开的配置文件中添加以下代码：
  ```powershell
  function prompt {
    Write-Host "[Power by 虚空终端] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
  }
  # Code by DuckStudio
  # Version 1.0
  ```
  保存并关闭配置文件后重启 PowerShell 即可<br>
* 一次性<br>
如果你不想每次都有`[Power by 虚空终端]`，只想要当前的 PowerShell 有`[Power by 虚空终端]`，则你可以在 PowerShell 中运行以下指令：
```powershell
function prompt {
    Write-Host "[Power by 虚空终端] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}
# Code by DuckStudio
# Version 1.0
# 注意：这是多行代码
```
这只会在当前 PowerShell 会话中有效。<br>
