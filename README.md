# GW Mod for Diablo II

基于 [TinaAlone Mod](https://bbs.d.163.com/forum.php?mod=viewthread&tid=175054315) 进行修改。

## Mod 简介

本 MOD 为单机版适配 2.7.2 版。力求保持原版风貌，对文字和 UI 进行了优化等辅助功能。
免责申明：本 MOD 只用于单机版游戏。不能应用于战网，相关风险请自行把握，本人不对使用此 MOD 可能产生的任何风险负责。敬请知悉！

## MOD 安装位置

将 Tina 文件夹复制放到游戏安装根目录内 mods 文件夹内（若无 mods 文件夹请新建一个）。
即放到 Diablo II Resurrected\mods\TinaAlone\TinaAlone.mpq 目录下。

[7 页大箱子]说明：

- 进入游戏后，创建一个新角色，mod 会自动在存档目录下创建 mods\TinaAlone\保存游戏存档（不影响以前的存档）。
- 附件解压后有两个 SharedStashHardCoreV2.d- 和 SharedStashSoftCoreV2.d- 文件，这是 7 页大箱子必备组件，复制到新创建的游戏存档目录里，否则共享箱子只有 4 页，若游戏存档目录里没有 mods 或 mods 文件夹下没有 TinaAlone 文件夹，请新建一个。
  路径示例：C:\Users\ (电脑用户名) \Saved Games\Diablo II Resurrected\mods\TinaAlone\，或 %UserProfile%\Saved Games\Diablo II Resurrected\mods\TinaAlone\
- 将以前的存档拷贝到新建目录里即可。
  以前存档的目录为：
  C:\Users\ (电脑用户名) \Saved Games\Diablo II Resurrected\
   新目录为：
  C:\Users\ (电脑用户名) \Saved Games\Diablo II Resurrected\mods\TinaAlone\

## 单机参数设置

用快捷方式启动，在 D2R.exe 文件上点击右键，选创建快捷方式，在桌面的快捷图标点击右键，选属性，再选快捷方式选项卡，在目标一栏加入启动参数   -mod TinaAlone -txt。
即 "X:\Diablo II Resurrected\D2R.exe" -mod TinaAlone -txt（横杠前面是有空格的）

## TinaAlone MOD 的主要功能：

- 7 页大箱子 16X16+大盒子+佣兵全装备；
- 吐槽补丁；
- 暗黑百科，集成常用合成配方、符文之语查询等信息；(采用本论坛大佬)
- 底材提示；
- 添加符文编号和贴图；
- 地图场景添加等级信息；
- - 号以上符文、珠宝、咒符等有掉落光柱；
- 字体采用励字准圆简繁，英文采用经典暗黑风格英文字体。
- 药剂和卷轴名称简写；
- 装备浮动变量 Max；(采用本论坛大佬)
- 装备属性添加了英文缩写以便与 Max 变量进行比较。
- 装备品质和重量，(轻，中，重)表示重量，(普，扩，精)表示品阶；
- 带孔（含带孔无形）底材地面显示为淡粉紫色，纯无形底材地面显示为淡青色；
- 箱子、武器架和凯恩等添加光效；
- 黑毛进度提醒。
- 入口和小站光柱指引。
- 屏蔽垃圾词缀（劣等的、损坏的、破旧的、粗制的）的物品。
- 小地图标识 npc 和好友图标。
- 怪物血条优化。
- 添加新简体字版。是重制版的繁体翻译为简体中文，而不是官方的简体中文。例如：“斬鐮”（繁体）和“斩镰”（简体）而不是“砍斧”。
- 调整佣兵位置避免 Fps 重叠。
- 屏蔽垃圾的小黑条。(屏蔽了大字体模式的小黑条)
- 添加荒廢的神殿(藍伊森之書)任务和安达利尔 bug 杀等提示。
- 添加祭坛功能说明，鼠标放到祭坛上即可看到。
- 屏蔽杂物（药水、卷轴、钥匙、弓矢等）的物品。
- 调整了字体库，保持繁体字。
- 增加了迷你盒子。
- 增加了刺客保护眼睛特效。
- 快速登陆。
- 支持英文显示，包括 Max 变量、品质、重量、吐槽、暗黑百科等。
- 技能增加英文说明。
- 物品增加英文说明。
- 增加尼拉塞克指引和巴爾(分身)显示。
- 增加任务和 Bug 任务提示。
- 彩色经验条。
- 精英怪高亮。

## 本 MOD 新增功能

- 普通->地狱怪物密度随难度提升。
- 普通->地狱精英怪物数量随难度提升。
- 轻微加快所有角色的回蓝速度。
- 每次升级获得 7 个属性点和 2 个技能点。
- 角色初始携带赫拉迪克方块，回城和鉴定从卷轴改为书。

## DIY 设置指南

- 去除凯恩发光效果。
  将 Mods\Tina\Tina.mpq\Data\hd\character 下的 npc 文件夹删除或改名。
- 更改字体。
  更改字体，将 Mods\Tina\Tina.mpq\Data\hd\ui\fonts 下将“arfangxinshuh7c95b5_eb_t.ttf
  ”改名，将“你的字体文件”重命名为“arfangxinshuh7c95b5_eb_t.ttf
  ”。
  恢复字体，将 Mods\Tina\Tina.mpq\Data\hd\ui\fonts 下文件删除或改名，即可恢复原版字体。
- 删除地图进口和小站的光柱指引。
  删除以下文件夹即可。
  data\hd\roomtiles\
   data\hd\objects\waypoint_portals\

需要捡取屏蔽物品时换成旧版模式（默认快捷键是 G 或 F5），就可以看到所有物品
另外，设置器中有很多可以直接设置的选项，请先看设置器能否满足需求再去修改
