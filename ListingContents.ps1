
$contents = Get-ChildItem -Path .\contents | Foreach-Object { $_.Name }

$readme = @(
    "# notes"
    "Memorandum, or using when it's too much trouble to explain."
    ""
    "# contents"
    "https://fumionihei.github.io/notes"
)

$readme | Out-File -FilePath README.md
$contents | ForEach-Object{ "https://fumionihei.github.io/notes/#contents/$_" } | Out-File -FilePath README.md -Append


$index = @(
    "# contents"
)

$index | Out-File -FilePath index.md
$contents | ForEach-Object{ "[$( $_.Replace(`".md`",`"`") )](https://fumionihei.github.io/notes/#contents/$_)" } | Out-File -FilePath index.md -Append

