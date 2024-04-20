function prompt {
    Write-Host "[Power by アーカーシャ端末] " -NoNewline -ForegroundColor Cyan
    return "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}
# Code by DuckStudio
# 翻訳結果は以下の通り：https://genshin-dictionary.com/zh-CN/akasha-terminal