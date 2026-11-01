---
name: gw-diagnose
description: 排查 GW mod 在游戏里没生效、丢字符串、图标乱码、闪退或 D2RLoader 报错。在用户提到没显示、丢失字符串、一股邪恶力量、图标、热重载、assert、崩溃日志，或要写探测脚本时使用。
---

# 查 GW 为什么不对

游戏目录是 `D:/Diablo II Resurrected`。Mod 在 `Mods/gw/gw.mpq`。启动参数是 `-mod gw -txt`。

## 探测脚本

PowerShell 会吃掉引号。探测写到临时目录的 `.py`，再用 `python` 跑那个文件。不要用 `python -c`。

- txt 用 `csv.reader`，分隔符是制表符。先读表头，再按行名找，不要整文件通读。
- 字符串 json 用 `utf-8-sig` 读。官方字符串文件是 UTF-8 BOM 加 CRLF。
- 物品名字和图标用官方的。`gw.mpq` 里不要有 `item-names.json`、`item-runes.json`、`item-modifiers.json`、`item-nameaffixes.json`，也不要有 `data/hd/ui/fonts/`。

## 字符串显示不对

同名 json 少了官方 key，整张官方表都会没掉。

- 物品名变成「一股邪恶势力」或「一股邪恶力量」：用了 `dummy` 的英文 `an evil force`。
- 界面写成「丢失字符串」：`ui.json` 里的 `strMissingString`。
- 物品名带了额外图标、颜色或点评：把对应的 `item-*.json` 从 `gw.mpq` 删掉，游戏就会用官方原文。

## D2RLoader

配置在游戏目录的 `d2rloader/config/d2rloader.toml`。当前文本语言是 `zhCN`。`[d2rcore.items]` 的 `show_ground_sockets`、`display_item_levels`、`maximum_sockets` 保持打开。

日志在 `d2rloader/logs/d2rloader.log`。启动段能看到 excel 编译和字符串是否载入。

- 控制台里的 reload 只重载 `data/global/excel` 的 txt。字符串、布局、字体要完全退出再进。
- `scripts/install.ps1` 会整份替换 `Mods/gw/gw.mpq`。游戏开着时复制，这一局看不到新文件。
- assert 对话框不要关。`ignored_asserts.txt` 里已有退出时的统计池 assert `79EAA5DCB9BDDFB6`。用户要点忽略列表，不要点 Exit。
- 没有 assert 框、Windows 事件是 `D2RLoader.exe`、异常码 `0xc00000ff`：进程栈溢出被系统杀掉。先看 `gw.mpq/data/hd/ui/fonts/` 里是不是放了字体。有的话删掉整个字体目录。
