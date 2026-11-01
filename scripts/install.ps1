# 把本仓库的 gw.mpq 装进《暗黑破坏神2》重制版的 Mods\gw。
# 用法：在仓库根目录执行  powershell -ExecutionPolicy Bypass -File .\scripts\install.ps1

$ErrorActionPreference = 'Stop'

$RepoRoot = Split-Path -Parent $PSScriptRoot
$SourceMpq = Join-Path $RepoRoot 'gw.mpq'
if (-not (Test-Path -LiteralPath (Join-Path $SourceMpq 'modinfo.json'))) {
    throw "找不到 gw.mpq：$SourceMpq"
}

function Find-D2RInstall {
    $registryRoots = @(
        'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
    )

    $fromRegistry = Get-ItemProperty $registryRoots -ErrorAction SilentlyContinue |
        Where-Object {
            $_.InstallLocation -and (
                $_.DisplayIcon -match 'D2R\.exe$' -or
                $_.DisplayName -match 'Diablo II Resurrected|暗黑破坏神\s*2'
            )
        } |
        ForEach-Object { $_.InstallLocation.TrimEnd('\') }

    $commonPaths = @(
        'D:\Diablo II Resurrected'
        'C:\Program Files (x86)\Diablo II Resurrected'
        'C:\Program Files\Diablo II Resurrected'
    )

    @(@($fromRegistry) + @($commonPaths)) |
        Where-Object { $_ -and (Test-Path -LiteralPath (Join-Path $_ 'D2R.exe')) } |
        Select-Object -Unique
}

$installs = @(Find-D2RInstall)
if ($installs.Count -eq 0) {
    throw '没有找到《暗黑破坏神2》重制版。请确认游戏已安装，并且目录里有 D2R.exe。'
}
if ($installs.Count -gt 1) {
    Write-Host '找到多个游戏目录：'
    $installs | ForEach-Object { Write-Host $_ }
    throw '请只保留一个安装目录后再运行。'
}

$gameRoot = $installs[0]
$destParent = Join-Path $gameRoot 'Mods\gw'
$destMpq = Join-Path $destParent 'gw.mpq'

New-Item -ItemType Directory -Force -Path $destParent | Out-Null

if (Test-Path -LiteralPath $destMpq) {
    $existing = Get-Item -LiteralPath $destMpq -Force
    if ($existing.Attributes -band [IO.FileAttributes]::ReparsePoint) {
        # 只去掉联接本身，不删除联接指向的仓库文件。
        cmd /c rmdir "$destMpq"
    }
    else {
        Remove-Item -LiteralPath $destMpq -Recurse -Force
    }
}

Write-Host "游戏目录：$gameRoot"
Write-Host "复制到：$destMpq"
Copy-Item -LiteralPath $SourceMpq -Destination $destMpq -Recurse -Force

if (-not (Test-Path -LiteralPath (Join-Path $destMpq 'modinfo.json'))) {
    throw "复制后没有找到 modinfo.json：$destMpq"
}

Write-Host '安装完成。用 D2RLoader 选择 gw 进入游戏。不要把 SharedStash 的 d2i 拷进存档目录。'
