# skills.txt 列说明

这篇说明 `skills.txt` 各列在干什么。原文是两份网页对照贴在一起的，列名被折行拆开，`*` 开头的注释列还会被当成 Markdown 斜体。这里合成一份。

3.3 的表头以 `source/global/excel/skills.txt` 第一行为准。以 `*` 开头的列是注释，游戏不读。旧文档里的 `Id`，在 3.3 表头写成 `*Id`。下面没写到的列，不要按这篇去增删。

术士行的 `charclass` 是 `war`。技能编号见 `skills_name.md`。

## 身份和调用

| 列 | 作用 |
| --- | --- |
| `skill` | 技能行名。 |
| `*Id` | 技能编号。游戏不读这个注释列，对照时用它。 |
| `charclass` | 哪个职业能用。亚马逊 `ama`，女巫 `sor`，死灵 `nec`，圣骑士 `pal`，野蛮人 `bar`，德鲁伊 `dru`，刺客 `ass`，术士 `war`。空的是通用或怪物技能。 |
| `skilldesc` | 对应 `skilldesc.txt` 里的说明行。 |
| `srvstfunc` | 服务端开始函数编号。决定能不能放出，例如没箭不能用弓技能，没尸体不能尸爆。 |
| `srvdofunc` | 服务端完成函数编号。决定技能怎么打出去。换这个编号等于换技能行为。 |
| `srvstopfunc` | 3.3 新增。服务端停止函数。旧教程里没有。 |
| `prgstack` | 聚气层数。主要给刺客聚气技。 |
| `srvprgfunc1` `srvprgfunc2` `srvprgfunc3` | 聚气 1、2、3 层时，服务端用哪种释放方式。 |
| `prgcalc1` `prgcalc2` `prgcalc3` | 上面三次释放的数量或范围算法。 |
| `prgdam` | 聚气技打出的伤害类型。 |

## 投射物

| 列 | 作用 |
| --- | --- |
| `srvmissile` | 服务端投射物，名字来自 `missiles.txt`。 |
| `decquant` | 是否消耗弹药。亚马逊弓箭会用。 |
| `lob` | 投射物走直线还是抛物线。 |
| `srvmissilea` `srvmissileb` `srvmissilec` | 额外的服务端投射物。组合技、聚气三段经常填在这里，而不是 `srvmissile`。 |
| `useServerMissilesOnRemoteClients` | 3.3 新增。远程客户端是否直接用服务端投射物。 |
| `srvoverlay` | 服务端叠在角色身上的图像，名字来自 `overlay.txt`。 |

## 光环

| 列 | 作用 |
| --- | --- |
| `aurafilter` | 光环作用对象。 |
| `aurastate` | 放光环的人进入的状态，名字来自 `states.txt`。 |
| `auratargetstate` | 被光环影响到的目标进入的状态。 |
| `auralencalc` | 持续时间。算法写法见 `skillcalc.txt`。 |
| `aurarangecalc` | 作用范围。 |
| `aurastat1` 到 `aurastat6` | 光环改哪些属性。 |
| `aurastatcalc1` 到 `aurastatcalc6` | 上面每个属性怎么算。负数就是减少。 |
| `auraevent1` 到 `auraevent3` | 光环期间会触发的事件，对应 `events.txt`。 |
| `auraeventfunc1` 到 `auraeventfunc3` | 事件发生时调用的函数编号。 |
| `auraevent4` `auraeventfunc4` | 3.3 新增的第四组事件。 |

## 被动

| 列 | 作用 |
| --- | --- |
| `passivestate` | 被动技能给的状态。 |
| `passiveitype` | 被动作用的武器类型，例如爪子 `h2h`、剑 `swor`。空着就是作用在角色身上。 |
| `passivereqweaponcount` | 3.3 新增。需要几把对应武器。 |
| `passivestat1` 到 `passivestat14` | 被动改哪些属性。旧教程只写到 5，3.3 表有 14 组。 |
| `passivecalc1` 到 `passivecalc14` | 对应的算法。 |

## 召唤

| 列 | 作用 |
| --- | --- |
| `summon` | 召唤物行名。 |
| `pettype` | 召唤物类型，对应 `pettype.txt`。 |
| `petmax` | 同时存在的上限。可以写数字，也可以写 `lvl` 之类的算式。 |
| `summode` | 召唤方式。要让数量超过 1，通常要写成 `S1`。留空时新的一只会替换旧的。 |
| `sumskill1` 到 `sumskill5` | 召唤物自己会的技能。 |
| `sumsk1calc` 到 `sumsk5calc` | 这些技能的等级算法。`skill('某技能'.blvl)` 表示跟着玩家那个技能的等级走。 |
| `sumoverlay` | 召唤物的图像。 |
| `stsuccessonly` | 只在成功时播放开始音。 |
| `stsound` `stsoundclass` `stsounddelay` | 开始音、音效类、延迟帧数。 |
| `weaponsnd` | 挥武器时的伴音。 |
| `dosound` `dosound a` `dosound b` | 技能打出去之后的声音。 |

## 客户端显示

| 列 | 作用 |
| --- | --- |
| `tgtoverlay` `tgtsound` | 打中目标时的图像和声音。 |
| `prgoverlay` `prgsound` | 施放过程中的图像和声音。 |
| `castoverlay` | 施法时角色身上的图像。 |
| `cltoverlaya` `cltoverlayb` | 客户端额外图像。 |
| `cltstfunc` `cltdofunc` | 客户端的开始函数、完成函数。显示用，要和服务端那组对上，不然只有伤害没有画面。 |
| `cltprgfunc1` 到 `cltprgfunc3` | 客户端的聚气释放显示。 |
| `cltmissile` `cltmissilea` `cltmissileb` `cltmissilec` | 客户端投射物。 |
| `cltcalc1` 到 `cltcalc3` | 客户端用的算法。 |
| `*cltcalc1 desc` 到 `*cltcalc3 desc` | 注释，游戏不读。 |
| `warp` | 会不会把角色传送走，例如传送。 |
| `immediate` | 光环是否马上生效。`1` 是，`0` 否。 |
| `enhanceable` | 能不能被装备上的加技能提升。 |
| `attackrank` | 旧数据里没使用。 |
| `noammo` | 不消耗弹药。 |
| `range` | 攻击距离。`h2h` 近战，`rng` 远程，`both` 都行，`none` 不用。 |
| `weapsel` | 是否限制武器。 |
| `itypea1` 到 `itypea3` | 主手需要的武器类型。 |
| `etypea1` `etypea2` | 主手不能是的类型。 |
| `itypeb1` 到 `itypeb3` | 副手需要的武器类型。 |
| `etypeb1` `etypeb2` | 副手排除类型。旧数据里基本空着。 |

## 需求和消耗

| 列 | 作用 |
| --- | --- |
| `anim` | 施法动作。 |
| `seqtrans` | 动作序列。 |
| `monanim` | 怪物用这个技能时的动作。 |
| `durability` | 是否检查耐久或耐力。 |
| `UseAttackRate` | 是否吃攻击速度。 |
| `LineOfSight` | 是否需要视线。 |
| `ItemEffect` | 装备上的充能是否走这套效果。 |
| `ItemCltEffect` | 充能在客户端怎么显示。 |
| `ItemTgtDo` | 对物品使用时做什么，例如传送。 |
| `ItemTarget` | 能对哪种物品或怪物使用。 |
| `ItemCheckStart` `ItemCltCheckStart` | 旧教程标明不要改。 |
| `ItemCastSound` `ItemCastOverlay` | 从装备触发时的声音和图像。 |
| `skpoints` | 旧数据里没使用。 |
| `reqlevel` | 需要的角色等级。 |
| `maxlvl` | 技能等级上限。本仓库里职业技能写成 27，原来空着的继续空着。 |
| `reqstr` `reqdex` `reqint` `reqvit` | 力量、敏捷、精力、体力需求。 |
| `reqskill1` 到 `reqskill3` | 前置技能。 |
| `restrict` | 德鲁伊用。`1` 只在人形态，`2` 只在变形后。 |
| `State1` 到 `State3` | 还要处于哪些状态才能放。 |
| `localdelay` `globaldelay` | 施法延迟，单位是帧。3.3 把旧的 `delay` 拆成了这两列。 |
| `leftskill` | 能不能放到左键。`1` 可以。 |
| `rightskill` | 3.3 新增。能不能放到右键。 |
| `repeat` | 按住是否连续施放。 |
| `alwayshit` | 3.3 新增。是否必定命中。 |
| `usemanaondo` | 持续技能按动作扣蓝。 |
| `startmana` | 持续技能开起来时先扣的蓝。 |
| `minmana` | 低于这个法力就显示成不可用。 |
| `manashift` | 法力除数。实际消耗大约是 `mana / 2^(9-manashift)`。`8` 是 1 倍，`7` 是一半。 |
| `mana` | 1 级时的法力基数，还要经过 `manashift`。 |
| `lvlmana` | 每高 1 级多扣或少扣的法力，不再乘 `manashift`。 |
| `interrupt` | 施放中能否被打断。 |
| `InTown` | 城镇里能否使用。 |
| `aura` | 是不是光环。 |
| `periodic` | 放出去之后是否自己继续打，例如雷暴、刀刃之盾。 |
| `perdelay` | 周期性攻击的间隔。 |
| `periodicClearAura` | 3.3 新增。周期性攻击时是否清掉光环。 |
| `finishing` | 刺客终结技。 |
| `prgchargestocast` `prgchargesconsumed` | 3.3 新增。聚气层数够多少才施放、放一次消耗几层。 |
| `passive` | 被动技能。 |
| `progressive` | 聚气技能。 |
| `scroll` | 只给鉴定、回城这类卷轴或书。 |
| `calc1` 到 `calc10` | 技能自己的算式。旧教程只写到 4，3.3 有 10 组。 |
| `*calc1 desc` 到 `*calc10desc` | 算式注释。后几列的表头没空格，写成 `*calc7desc` 这种。 |
| `Param1` 到 `Param20` | 算式用的数字。`ln12` 就是 `par1 + lvl * par2`，`ln34`、`ln56` 类推。旧教程只写到 8。 |
| `*Param1 Description` 到 `*Param20Description` | 参数注释。后几列的表头没空格，照表头写，不要自己加空格。 |
| `InGame` | 是否在游戏里启用。 |
| `ToHit` | 1 级时的命中加成。 |
| `LevToHit` | 每级额外命中。 |
| `ToHitCalc` | 命中算式。 |
| `ResultFlags` `HitFlags` `HitClass` | 命中结果标记。旧教程没有逐个拆开。 |
| `Kick` | 是否用踢的动作。 |
| `HitShift` | 伤害除数，算法和 `manashift` 同类。 |
| `SrcDam` | 武器伤害拿百分之多少来算。96 就是 96/128。 |
| `MinDam` `MaxDam` | 1 级物理伤害的下限和上限。 |
| `MinLevDam1` 到 `MinLevDam5` | 物理下限随等级增加。五段对应技能等级 2–8、9–16、17–22、23–28、29 以上。 |
| `MaxLevDam1` 到 `MaxLevDam5` | 物理上限的五段增量。 |
| `DmgSymPerCalc` | 物理伤害的技能协同。 |
| `EType` | 元素类型：`fire`、`cold`、`ltng`、`pois`、`mag`。 |
| `EMin` `EMax` | 1 级元素伤害下限和上限。 |
| `EMinLev1` 到 `EMinLev5` | 元素下限的五段增量。 |
| `EMaxLev1` 到 `EMaxLev5` | 元素上限的五段增量。 |
| `EDmgSymPerCalc` | 元素伤害协同。常见写法是 `(skill('某技能'.blvl))*par8`。 |
| `ELen` | 冰冻或毒素持续时间，单位是帧。 |
| `ELevLen1` 到 `ELevLen3` | 持续时间随等级增加。 |
| `ELenSymPerCalc` | 持续时间协同。 |
| `aitype` `aibonus` | 和武器、攻击判定有关。旧教程没有确定公式。 |
| `cost mult` `cost add` | 技能出现在装备上时，对价格的乘和加。 |

## 3.3 多出来、上面没展开的列

这些列在旧网页里没有，或者名字已经变了。改表时留着，不要整列删掉：

- `srvstopfunc`
- `useServerMissilesOnRemoteClients`
- `auraevent4`、`auraeventfunc4`
- `passivereqweaponcount`
- `passivestat6` 到 `passivestat14`，以及对应的 `passivecalc6` 到 `passivecalc14`
- `localdelay`、`globaldelay`。旧教程里的 `delay` 已经没有这列
- `rightskill`、`alwayshit`、`periodicClearAura`、`prgchargestocast`、`prgchargesconsumed`
- `calc5` 到 `calc10`，`Param9` 到 `Param20`

术士技能用的也是这些列，没有单独一张表。召唤羊头人、污染魔、污秽者共用 `petmax`，上限写在恶魔精通的等级算式里。
