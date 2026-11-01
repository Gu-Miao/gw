---
name: gw-edit-data
description: 修改 GW 这个暗黑破坏神 2 重制版单机 mod 的 excel 表、物品字符串和字体。在用户要改数值、技能、掉落、方块、物品名字、图标、颜色或字体时使用。
---

# 改 GW 的数据

先读 `AGENTS.md`。下面只写动手顺序。游戏读的是 `gw.mpq`，不是 `source/`。

## 改 txt

1. 在 `gw.mpq/data/global/excel/` 里按行名搜索。没有这张表时，从 `source/global/excel/` 复制同名文件再改副本。不要从旧提交把整张旧表盖回来。
2. `source/global/excel/` 是 3.3 官方表，用来查列名和新行。`docs/` 和 3.3 表头不一致时，以 `source/global/excel/` 的第一行为准。
3. 制表符分隔。只改相关单元格，保持列数，空单元格留空。`*` 开头的列是注释。`*eol` 留着。不要删术士行、`Warlock` 经验列、`ResistFloor`、`DropConditionCalc`。
4. 这些表没有明确要求不要放进 `gw.mpq`：`armor.txt`、`weapons.txt`、`runes.txt`、`misc.txt`、`uniqueitems.txt`、`setitems.txt`。不要加 `bankoriginal*`、`bankexpansion*` 布局。
5. UTF-8，不要 BOM。换行跟所改的那份官方表一致。
6. 职业技能 `maxlvl` 是 27，含 `charclass` 为 `war` 的术士。原来空着的继续空着。技能编号见 `docs/skills_name.md`。
7. 数值和 `README.md` 对得上。改设定时改 README 里对应的那一句。

## 改字符串

`source/local` 是旧字符串，不要整包拷进 `gw.mpq`。

物品显示用官方的。不要把 `item-names.json`、`item-runes.json`、`item-modifiers.json`、`item-nameaffixes.json`、`objects.json` 放进 `gw.mpq/data/local/lng/strings/`。

同名 json 一旦放进 mod 就是整文件替换。少一个官方 key，游戏里就是丢名字。`ui.json` 现在留着，是官方界面字符串，不是物品名。

## 改字体

不要往 `gw.mpq/data/hd/ui/fonts/` 放字体，也不要把别的字体改名盖成 `BlizzardGlobal-V5_81.ttf`。密图标字形画出来会栈溢出。

不要整包拷光柱、血条，也不要整份盖 `_profilehd.json`。`*.ttf` 不要当文本打开。

## 装进游戏

改完跑 `scripts/install.ps1`。它会删掉游戏目录里的 `gw.mpq` 再整份复制。
