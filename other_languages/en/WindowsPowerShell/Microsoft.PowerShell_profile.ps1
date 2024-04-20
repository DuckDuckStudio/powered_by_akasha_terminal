function prompt {
    Write-Host "[Power by Akasha Terminal] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}
# Code by DuckStudio