# GW

暗黑破坏神 2 重制版的单机 Mod，支持术士君临 3.3，请勿在站网上使用。

## Mod 内容

- 赫拉迪克方块是 10×10。
- 佣兵除了武器、头盔、护甲，还能戴护身符、两枚戒指、鞋、手套和腰带。
- 赫拉迪克方块 10×10 扩展。
- 技能上限 27，另有 20 个怪物技能的上限同样是 27。
- 每级 2 点技能，属性点每级 5。
- 回蓝更快。
- 开局带赫拉迪克方块、回城书和鉴定书。
- 噩梦和地狱的抗性惩罚更高。怪物技能等级：普通加 1，噩梦从 3 提到 4，地狱从 7 提到 9。
- 佣兵对首领的伤害更高。
- 1 到 30 级，以及 89 到 99 级的经验更多。
- 腰带是 16 格。资料片第二套里的 `default2` 仍是 4 格。
- 职业专属装备更容易出暗金、套装和超强。安达利尔、督瑞尔、墨菲斯托、迪亚波罗、巴尔，以及对应的任务掉落，暗金和套装权重按难度是 990、995、999。
- 高号符文更容易掉。牛场额外会掉符文：普通 `Runes 6`，噩梦 `Runes 10`，地狱 `Runes 17`。
- 大部分地图的怪物密度和精英数量，从普通到地狱逐级提高。
- 赌博更容易出稀有、套装和暗金。
- 人物界面上，背包、左右手、鞋和手套的位置有调整。底栏用游戏自己的。

## 安装

在仓库根目录执行：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install.ps1
```

脚本会找到装有 `D2R.exe` 的游戏目录，把本仓库的 `gw.mpq` 复制到 `Mods\gw\gw.mpq`。找到多个游戏目录时会停下来，只留一个再运行。

用 D2RLoader 启动，或给 `D2R.exe` 加参数：

`"X:\Diablo II Resurrected\D2R.exe" -mod gw -txt`

横杠前面有空格。新角色的存档在 `%USERPROFILE%\Saved Games\Diablo II Resurrected\Mods\gw\`。

D2RLoader 的 `[d2rcore.items]` 里这三项保持打开：`show_ground_sockets`、`display_item_levels`、`maximum_sockets`。地面孔数、物品等级、最大孔数靠这三项显示。

改完字符串或字体后要完全退出再进。游戏里的 reload 只重载 excel 表。

## 参考

- [手把手教你做 Mod](https://www.bilibili.com/video/BV1p44y1L7T4)
