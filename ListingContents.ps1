
$contents = Get-ChildItem -Path .\contents | Foreach-Object { $_.Name } | ForEach-Object{ "https://fumionihei.github.io/notes/#contents/$_" }

$lines = @(
    "# notes"
    "Memorandum, or using when it's too much trouble to explain."
)

# https://fumionihei.github.io/notes/#contents/powershell.md

$lines | Out-File -FilePath README.md
$contents | Out-File -FilePath README.md -Append