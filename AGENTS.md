# GW Mod

暗黑破坏神 2 重制版单机 Mod，目录名 `gw`。当前数据按术士君临 3.3 收过。给玩家看的说明在 `README.md`。

只做单机。不要加战网、联机或绕过校验的改动。

## 游戏读哪份文件

启动参数是 `"D2R.exe" -mod gw -txt`。游戏加载的是本仓库的 `gw.mpq` 文件夹，安装到 `Diablo II Resurrected\Mods\gw\gw.mpq`。`gw.mpq/modinfo.json` 里 `name` 和 `savepath` 都是 `gw`。

要改已经生效的数值，改 `gw.mpq/data/global/excel/` 里对应的表。`source/global/excel/` 是 3.3.0 官方表，用来查列、查新行，不是游戏直接读的目录。

`source/local` 里的字符串还是旧版，不要整包拷进 `gw.mpq`。物品名字、词缀、符文之语说明用官方表，不要把 `item-names.json`、`item-runes.json`、`item-modifiers.json`、`item-nameaffixes.json` 或 `objects.json` 放进 `gw.mpq`。

某张表现在没有放进 `gw.mpq` 时，游戏用官方表。要改它，先从 `source/global/excel/` 复制到 `gw.mpq/data/global/excel/`，再改副本。不要从旧提交里把整张旧表盖回来。

## 这一版不要覆盖

这些表一盖就会丢掉术士装备、新符文之语或仓库堆叠，没有明确要求就不要放进 `gw.mpq`：

- `armor.txt`
- `weapons.txt`
- `runes.txt`
- `misc.txt`
- `uniqueitems.txt`
- `setitems.txt`

不要添加 `bankoriginal*`、`bankexpansion*` 布局。个人箱保持官方 6×4，共享箱保持官方 10×10。仓库根目录的 `SharedStash*.d2i` 是旧版 7 页箱子组件，这一版不要装进存档。

`gw.mpq` 里现在留数值表、10×10 方块布局、佣兵面板，以及它们用到的贴图。不要放 `data/hd/ui/fonts/`。不要整包拷光柱、血条，也不要整份盖 `_profilehd.json`。不要放蓝伊森之书的页面，也不要在底栏加书按钮。

## 改 txt

这些文件是制表符分隔的表。第一行是列名，一行一条记录。

- 保持列顺序和列数。空单元格留空，不要删掉制表符。
- 以 `*` 开头的列是注释，游戏不读。`*eol` 表示这一行结束，留着。
- 只改相关单元格。按行名改，不要整表重排，也不要删掉官方新增的行和列。术士行、`Warlock` 经验列、`ResistFloor`、`DropConditionCalc` 都要留着。
- 编码用 UTF-8，不要加 BOM，不要把官方表存成 GBK。换行跟所改的这份官方表原来的换行一致。
- 技能上限是 27，包含 `charclass` 为 `war` 的术士技能。原来空着的 `maxlvl` 继续空着。
- 数值要和 `README.md` 里已经写明的改动对得上。改这些设定时同步改 README 里对应的那一句。

字段含义以表头和 `docs/` 为准。`docs/` 是从旧网页整理的，和 3.3 新列不一致时以 `source/global/excel/` 的表头为准。

- `docs/skills_name.md`：技能 `*Id`、英文名、简体名。术士 `charclass` 是 `war`，编号 373 到 402。
- `docs/skill_arg.md`：`skills.txt` 各列在干什么。
- `docs/skills.txt.md`：旧的改技能教程。例子停在资料片七职业，算法还能用。不要按教程里的列数去增删 3.3 的列。

## 不要动的文件

这些是二进制，不要当文本打开或整文件重写：`*.sprite`、`*.texture`、`*.particles`、`*.ttf`、`*.webm`、`*.d2i`、`*.7z`。

## 怎么确认改对了

本仓库没有测试脚本。`scripts/install.ps1` 会把 `gw.mpq` 拷到游戏的 `Mods\gw\` 下。改完后用 `-mod gw -txt` 进单机看。字符串和字体不会热重载，要完全退出再进。excel 可以用 D2RLoader 的 reload。新角色的存档在 `%USERPROFILE%\Saved Games\Diablo II Resurrected\Mods\gw\`。

改之前先在对应文件里搜到要动的行名，确认只影响这一处。txt 很大，用搜索定位，不要整文件通读。
