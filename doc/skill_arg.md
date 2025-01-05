# skill 参数解析

skill=技能名称；

Id=技能的 ID 代码；

charclass=哪位角色使用此项技能；

skilldesc=对于技能的说明；

srvstfunc=此列是针对战网所用，校验 DLL 文件关于技能的描述是否正确；

srvdofunc=此列是针对战网所用，如果校验 DLL 文件关于技能的描述正确的话，载入角色的相关信息；

prgstack=进程包，说明：关于游戏进程的参考值；

srvprgfunc1,2,3=此列是针对战网所用，服务器根据游戏的进程调整相应角色的攻击功能；

prgcalc1,2,3=“刺客”的技能控制数值；

prgdam=“刺客”所释放的能量技能的伤害值参数；

srvmissile=服务器调控“箭”类的参数（根据 missiles.txt）；

decquant=受外界影响所削减的伤害值；

lob=54X:“箭”以直线还是曲线行进；

srvmissilea,b,c=服务器从 missile.txt 文件中查找“箭”的类型；

srvoverlay=服务器所控制的图像选择参数；

aurafilter=服务器对于“光环”的设定参数；

aurastate=角色在使用“光环”魔法时对于角色名称的影响；

auratargetstate=被动“光环”魔法收益者的角色名称的影响；

auralencalc=“光环”所持续的时间，同 Skillcalc.txt 文件关联；

aurarangecalc=“光环”影响的范围；

aurastat1-6=“光环”影响下的状态；

aurastatcalc1-6=“光环”影响下的状态计算参数；

auraevent1-3=“光环”影响下可能发生的事件，同 events.txt 文件关联；

auraeventfunc1-3=当时间发生时调用的功能参数；

auratgtevent=未使用参数；

auratgteventfunc=未使用参数；

passivestate=技能的名称（来自 states.txt）；

passiveitype=技能的类型（来自 weapons.txt）；

passivestat1-5=被动攻击的状态（主要用于 NEC 的召唤系列技能）；

passivecalc1-5=如何计算每一种被动状态（同样主要用于 NEC）；

passiveevent=无用参数；

passiveeventfunc=无用参数；

summon=召唤的名称（critter/spell/trap）；

pettype=所召唤怪物的类型（同 pettype.txt 文件关联）；

petmax=一次召唤所允许的最大数量；

summode=所召唤怪物的类型（同 monmode.txt 文件关联）；

sumskill1-5=所召唤怪物拥有的技能；

sumsk1-5calc=所召唤怪物拥有的技能级别；sumumod=召唤参数（目前只针对“刺客”的技能）；

sumoverlay=所召唤怪物的图像；

stsuccessonly=召唤成功后的声音；

stsound=开始音；

stsoundclass=开始音的音频；

stsounddelay=开始音的祯数；

weaponsnd=角色在使用技能时，武器的伴音；

dosound,a,b=技能使用完毕后，所发出的声音（由怪物的类型决定）；

tgtoverlay=但角色遭受某项技能打击时所显示的图像；

tgtsound=技能在针对敌人时所发出的声音；

prgoverlay=技能在施放过程中所采用的图像；

prgsound=技能在施放过程中所采用的声音；

castoverlay=技能在使用时角色所发生的变化图像；

cltoverlaya,b=技能发出时用户端所显示的图像（通常同战网端进行校对）；

cltstfunc=客户端的功能段；

cltdofunc=客户端直接调用参数的功能段；

cltprgfunc1-3=客户端的程序进程段；

cltmissile -d=客户端调用 Missile.txt 文件进行校对；

cltcalc1-3=由客户端对技能的影响效果进行校对；

\*cltcalc1-3 desc=对于技能计算的描述（没有实际的作用）；

warp=当前技能是否能够转换角色的位置（比如说：SOR 的 Teleport）；

immediate=“光环”是否立刻发生作用，（1 表示立刻起作用，0 表示否）；

enhanceable=技能能否被提升，1 表示能，0 表示不能；

attackrank=无用参数；

noammo=技能是否携带有“装备”，比如说：1 代表无魔法属性的箭；

range=物理攻击的范围类型，h2h=赤手攻击，rng=攻击的范围，both=以上两种均具备，none=未使用；

weapsel=当前技能是否有特定武器装备作为限制；

itypea1-3=右手使用当前技能时所必需的武器类型；

etypea1-2=左右手交换攻击的参数；

itypeb1-3=左手使用当前技能时所必需的武器类型；

etypeb1-2=未使用参数；

durability=使用此类技能是否检验角色的“耐力值”是否满足要求，1 代表检验；

TgtPlaceCheck=角色复活时对于技能位置的影响；

ItemEffect=此种技能能否在特定的物品上出现（比如说+2 War Cry 的 SC）；

ItemCltEffect=nova、frost nova、chain lightning 专用的伤害计算参数；

ItemTgtDo=技能能够使所针对的物品做某些事情（E 文版的注释说只针对 SOR 的 Teleport，不过我觉得对于 NEC 的铁石魔也应该有效）；

ItemTarget=限制技能所针对的特定物品或者怪物；

ItemCheckStart=无用参数，建议不要修改；

ItemCltCheckStart=无用参数，建议不要修改；

ItemCastSound=当此项技能来源于一个特定物品的附加属性时，所采用的声音；

ItemCastOverlay=当此项技能来源于一个特定物品的附加属性时，角色图像所发生的变化；s

kpoints=未使用参数；

reqlevel=使用当前技能所需要的角色等级；

maxlvl=当前技能所允许的最大等级；

reqstr=使用当前技能所需要的“强壮”属性；

reqdex=使用当前技能所需要的“敏捷”属性；

reqint=使用当前技能所需要的“魔法”属性；

reqvit=使用当前技能所需要的“生命”属性；

reqskill1-3=使用此技能前必须学会的技能；

restrict=Druid 专用参数；

State1-3=使用此项技能所需要的其它因素；

delay=每次使用技能的拖延时间；

leftskill=能否在左面的技能按钮上使用，1 代表允许使用；

repeat=在使用此项技能时，如果按钮（或者鼠标）被持续按下，是否不间断的施放技能，1 代表允许；

checkfunc=确定物品是否具有合法属性；

nocostinstate=德鲁依变狼、变熊专用参数（1 表示无价格）；

usemanaondo=如果一种技能被持续的使用，是否对其所消耗魔法的点数进行缩减；

StartMana=持续性技能专用，在开始时所耗费的魔法数值；

minmana=当前技能所消耗的最小魔法数值；

manashift=魔法除数，用来计算消耗魔法的数量；

mana=当前技能所消耗的魔法数值；

lvlmana=每提升一级技能所需要的魔法数值的增加量；

interrupt=技能在施放过程中能否被打断（1 表示可以）；

InTown=技能能否在城镇中使用（1 表示可以）；

aura=当前技能是否为“光环”技能（1 表示是）；

periodic=技能施放后是否持续的进行攻击，1 代表是，比如说：SOR 的 thunderstorm，ASS 的 blade
shield；

perdelay=技能在转换中两种技能的转换时间差；

finishing=“刺客”技能专用参数；

passive=当前技能是否为被动技能（1 表示是被动技能）；

progressive=技能能否被提升（1 表示能）；

general=是否每个角色都能够使用当前技能（1 表示能）；

scroll=此项技能是否只能由卷轴激发（只用于鉴定和回城）；

calc1-4=技能计算参数；

\*calc1-4 desc=对于技能计算参数的注释；

Param1-8=技能参数设置；

\*Param1-8 Description=对于技能参数设置的注释；

InGame=技能在游戏中是否起效（1 代表起效）；

ToHit=技能为 1 级时的物理攻击奖赏；

LevToHit=技能额外属性对攻击的奖赏；

ToHitCalc=打击率计算参数，说明：就我看来，好像只对 Valkyrie、 bash 和 stun 等技能有效；

ResultFlags=技能参数；

HitFlags=技能参数；

HitClass=技能参数；

Kick=当前技能是否采用“踢”这个动作作为攻击方式；

HitShift=攻击计算除数；

SrcDam=技能伤害参数；

MinDam=当前技能在 1 级时的最小伤害值；

MinLevDam1-5=对于最小伤害的补充参数；

MaxDam=当前技能在 1 级时的最大伤害值；

MaxLevDam1-5=对于最大伤害的补充参数；

DmgSymPerCalc=对于“光环”系列的伤害补充参数；

EType=技能的类型，如：attack、fire、cold、ltng、pois、mag；

EMin=所定义的技能类型 1 级时的最小伤害值；

EMinLev1-5=对于所定义的技能类型最小伤害的补充参数；

EMax=所定义的技能类型 1 级时的最大伤害值；

EMaxLev1-5=对于所定义的技能类型最大伤害的补充参数；

EDmgSymPerCalc=对于所定义的技能类型最大伤害的补充参数；

ELen=冷冻或者毒素的持续时间（针对所定义的技能类型）；

ELevLen1-3=所定义的技能类型延续时间的技能参数；

ELenSymPerCalc=对于所定义的技能类型伤害值的补充参数；

aitype=如果角色持有武器，那么这种武器在攻击中所发挥的作用；

aibonus=如果角色持有武器，那么这种武器在攻击中所发挥作用的补充值；

cost mult=如果技能在某一特定的武器装备上，此物品的价格；

cost add=如果技能在某一特定的武器装备上，此物品提升价格参数。

--------------以下为补充-----------------

skill=skill name

//skill=技能名称

Id=skill id number

// Id=技能的 id 号

charclass=who can use

// charclass=控制谁能用

skilldesc=player/item skill name excepting delerium charge

// skilldesc.txt 中对应的行

srvstfunc=Server Starting function like in the 1.09 DLL
skill table. Now this is just a number and they need to be swapped to swap skill
effect or create new.

// srvstfunc=服务器启动函数类似 1.09 dll 的技能表。现在这只是一个数字，他们需要交换成交换技能效果或创造一个新的。

srvdofunc=Server FInishing function like in the 1.09
DLL. Same remark as above, all the skill swap play here almosT.

// srvdofunc=服务端 FInishing function（修正函数？？）象 1.09 dll。和上面标记的一样，所有技能都需要 swap（交换）。

prgstack=progressive stack No idea what it is

// prgstack= progressive stack 进程堆楗？不知道。

srvprgfunc1,2,3=server controlled attack function with
progressive skills

// srvprgfunc1,2,3=服务器根据 progressive skills 控制攻击的函数

prgcalc1,2,3=calculations to call for assassin progressive
skills

// prgcalc1,2,3=计算调用指定的 progressive skills

prgdam=type of damage released by assassin progressive
skills

// prgdam=指定 progressive skills 释放出伤害的类型

//这个 progressive 原料可能和聚气有关，我们能创造一个新的么？

srvmissile=server controlled missile type (from missiles.txt)

// srvmissile=服务器控制的 missile 类型（从 missiles.txt）

decquant=decrease quantity for zon attack

// decquant=减少 zon attack（zon 攻击）的数量

lob=54X : It's to know if the misisle is launched in
an arc or in a straight line.

//lob=missile 是以一个弧形还是直线发射的。

srvmissilea,b,c=server calls to Missile.txt for type

// srvmissilea,b,c=server 服务器调用 missile.txt 来指定 missile 的种类

srvoverlay=server controlled overlay image name?

// srvoverlay=服务器控制的 overlay 图形名字。

aurafilter=hard to tell...might have something to do
with who it affects....can't tell right now

//aurafilter= 字面意思是灵气作用对象选择，具体哪个对哪个就难说了。建议去 PH 搜索下这个，有几篇文章。

aurastate=effect name on character/mob using aura

// aurastate=光环发起单位的状态

auratargetstate=effect name on who it affects other than
char/mob using

//受光环影响单位的状态

auralencalc=how long it lasts, use skillcalc.txt for
equations

//持续时间

aurarangecalc=how far the aura affect goes.

//光环能影响多远

aurastat1-6=stats affected by aura

//受光环影响单位受到的实际效果，直接填写 stat（魔法修饰）

aurastatcalc1-6=calculations used for stats affected.

//用于状态效果的计算。

auraevent1-3=events that happen in aura. reference events.txt

//光环使用时产生的事件，参照 events.txt

auraeventfunc1-3=function call when event happens (where
does this GO?!?!??)

//当事件发生时使用的函数

auratgtevent=not used, aura target event?

//没有用，光环目标事件

auratgteventfunc=not used, aura target event function....?

Here we can change what the aura do. Life leech aura anyone ???? Note that combined
with the satte.txt, an "aura" can be more than a simpel overlay, like
having your char turn into a blakc druid when using it ...

//在这里我们可以改变光环所做的事情。比如说，吸血光环？注意，结合 state.txt，一个“光环”可以产生复杂的效果，比如把你的角色变身为一个黑的鹿邑？

passivestate=name of skill in states.txt

//stats.txt 中的状态名，不知道设了有什么用

passiveitype=weapon type from weapons.txt

//weapons.txt 中的武器种类，限制只有装备此种武器才能得到该被动技能的效果

passivestat1-5=stats used for passive statistics (necro
raising mostly)

//被动技能的效果，直接写 stat

passivecalc1-5=how to figure out each stat (again mostly
for necros)

//每个状态如何计算

passiveevent=not used, passive event happens?

//没有使用，被动事件发生？

passiveeventfunc=not used, function call on passive events?

//没有使用，被动事件调用的函数

Same as above but for passive skill .... I dunno if aura/passive
can work together on the same skills.

//和上面提到的一样，只不过是适用于被动技能。我不知道，光环/被动技能是否可以在同一个技能上一起工作。

summon=name of summon, critter/spell/trap

//召唤物的名字，生物/魔法/陷阱

pettype=type of pet from pettype.txt

//从 pettype.txt 中读的种类

petmax=max number allowed at once.

//允许召唤的最大数目

summode=mode of summoned monster see monmode.txt

// monmode.txt 中读取的召唤物的方式

sumskill1-5=skillnames that summons Have

//召唤物所拥有的技能名称

sumsk1-5calc=skill level and ability for skills for summons

//召唤物技能的级别和能力

sumumod=not sure. only affects 4 assassin skills and
the Overlord's whip??....

//不太明确。只影响 4 个刺客技能和 Overlord's whip

sumoverlay=image overlaid on a summon? only affects dopplezon
and minion spawners.... 召唤 DOPPLEZON 的时候不是有个很漂亮的动画么，这就是管那个的。

stsound=starting sound?

//开始的声音

stsoundclass=starting sound class?

//开始声音的类别

stsounddelay=starting sound delay?

//开始声音延迟

weaponsnd=weapon sound with skill.

//技能中武器的声音

dosound,a,b=sounds that happen when skill is done? seems
to happen for monsters too.

//当技能完成时的声音？好像也在怪物上发生。

tgtoverlay=image applied to target temporarily when hit
by skill.

//技能击中目标时临时的图形

tgtsound=sound made by skill when affecting a target.

//技能击中目标时的声音

Hmmm can someone check if ltnghit is set for ltng skills
here ?

//是否有人检查过如果为电系技能在此处设置为 ltnghit 会有什么效果？

prgoverlay=progressive image overlay

//技能施展的图形动画

prgsound=progressive sound for skill

//技能施展时的声音

castoverlay=temporary image overlay on character/mob
when skill used.

//角色使用技能时的临时图形动画

cltoverlaya,b=temp image overlay from skills run by client

//技能被使用时客户端的暂时图形效果。

Client overlay like in 1.09 DLL skill table.

//客户端的动画象 1.09 dll 技能表

cltstfunc=not sure... maybe client standard function?

//不确定，可能是客户端标准函数

cltdofunc=not sure... maybe client direct object function?

//不确定，可能是客户端直接对象函数

cltprgfunc1-3=not sure... maybe client program functions?

//不确定，可能是客户端程序函数？

cltmissile -d=Client side calls to Missile.txt

//客户端调用 missile.txt

cltcalc1-3=Client controld calculations for skills

//客户端控制技能的计算。

\*cltcalc1-3 desc=English descriptions of calculations
(not used in game.)

//英文注释上面的字段（在游戏中没有用）

Same effect as svtxxxx but on client (like in the 1.09D
skill table.

//对 svtxxxx 是同样的效果，但 svtxxxx 只是在客户端（象 1.09d 技能表）

warp=does skill warp character to new location (1 yes
0 no)

//技能是否会改变角色的位置（1=yes 0=no）

Used by teleport ???

//被 teleport 使用？？？

immediate=aura start immediately? (1 yes 0 no)

//光环使用是否马上有效（1=yes 0=no）

enhanceable=can skill be enhanced? (1 yes 0 no)

//是否可以被强化（1=yes 0=no）

attackrank=no idea...

//没有想法

noammo=does skill not take ammo? (1 no ammo magic arrow)

//技能不发出箭支（1 ＝没有箭支的魔法箭）

range=range of physical attack skills h2h=hand to hand,
rng=ranged attack, both=use both, none=not used.

//物理攻击的范围，h2h ＝手对手攻击，rng=范围攻击，both=两种方式都使用，none=都不使用

weapsel=weapon select? weapon type? looks like a hardcode
to me.

// weapsel=武器的选择？武器的种类？

itypea1-3=item type needed in right hand to use skill.

//当使用此武器时此技能可以使用

etypea1-2=tpot for just attack and left hand Swing....no
idea what for.

//ETYPE，在 MAGICPREFIX 里见过吧？燃烧瓶和毒瓶（TPOT）显然不能拿来砍人……所以这列就是“当装备此武器时不能使用此技能”。

itypeb1-3=item type needed in left hand to use skill.

//当左手（副手）使用此武器时此技能可以使用

etypeb1-2=Not Used.

//没有使用

anim=s 角色使用此技能时的动画

seqtrans=same as in 1.09 seq column

//和 1.09 的 seq 列一样 什么玩意，109 里根本没有什么 SEQ 列

monanim=怪物使用此技能的动画

seqnum=Same as in 1.09

//和 1.09 一样使用 109 的文件引导也没有！

seqinput=not sure... input needed during sequence?

//不能确定，输入需要持续的序列

durability=does skill check durability use of weapon/armor
during skill? 1 for yes.

//技能是否检查所用武器和盔甲的耐久度？1 ＝ yes

UseAttackRate 是否使用 AR

LineOfSight 是否必须在施法单位能看见的地方释放

TargetableOnly ：Hit to effect？？？

SearchEnemyXY 必须对敌人使用

SearchEnemyNear 必须选定敌人使用

SearchOpenXY FireWall/Blizzard/Meteor/Fissure/Volcano
范围攻击法术？

SelectProc 能否对死去的角色使用

TargetCorpse 是否只能对尸体使用

TargetPet 能否对 PET 使用

TargetAlly 能否对友方使用

TargetItem 能否对物品使用

AttackNoMana 109 里也没有解释

TgtPlaceCheck=for ressurect and ressurect2 only...check for target placement?

//只被 ressurect 和 ressurect2 使用，检查目标的位置？

ItemEffect=Can the skill appear on a charged or gethit
skill prop.

//这个技能是否能在 charged（充能）和 gethit（被攻击时发出）技能属性中出现。

ItemCltEffect=not sure... only used for nova, frost nova,
chain lightning...

//不能确定，只在 nova, frost nova, chain lightning...中使用

ItemTgtDo=skill can target item and make it do something?
only active on teleport.

//技能可以让目标物品干些事情，只在 teleport 中被启用。

ItemTarget=type of target for skill? rather hard to decipher
what this is for.

//技能目标的种类？很难破解这是干什么的？

ItemCheckStart=don't know. only has a 1 for hydra and
bone prison

//不知道，只是在 hydra 和 bone prison 中使用 a 1

ItemCltCheckStart=don't know. only has a 1 for poison/corpse
explosion

//不知道，只在 poison explosion 和 corpse explosion 使用 a 1

ItemCastSound=sound for skill used from an item

//从物品中使用技能所发出的声音

ItemCastOverlay=image overlay on char when skill is used
from item.

//从物品中使用技能时，角色的图形动画。

skpoints=.

//需要的技能点数：不但有用，而且能接受公式，真 TMD 爽

reqlevel=

//使用技能要求的级别

maxlvl=

//技能的最大级别

reqstr=

//技能要求的力量

reqdex=

//技能要求的敏捷

reqint=

//技能要求的魔法

reqvit=

//技能要求的活力//这些真的能被使用么？

reqskill1-3=.

//取得这个技能所要求的其他技能。

restrict=

// 只有 druid 使用 1 限制人形时使用 2 限制变形后使用

State1-3=states other than human required for skill use

//使用技能时要求的一些状态

delay=.

//施法延迟，以帧为单位。

leftskill=//是否可以用左键使用技能 1=yes

repeat=.

//如果鼠标一直按住，是否可以重复不断的使用技能 1=yes

Used for inferno, can be used on others ???

//在 inferno 使用，能在其他技能中使用么？？？

checkfunc=check to make sure of item/condition for use.
various numbers.

//使用各种各样的数字来确定检查使用的物品和条件使用符合。

nocostinstate=.

//只在 werewolf/bear.中使用，1 ＝不能施放

usemanaondo=

//只在 blade fury,中使用 a1,如果持续使用可能耗费所有的魔法，

startmana=

//用在可持续的技能，计算魔法消耗

minmana=//小于此法力值时技能显示为红色

manashift=//对 MANA 的乘数，公式是 1/2^(9-manashift)，所以这 manashift 越高，这乘数就越低。8=1,7=0.5,6=0.25,5=0.125,4=0.625(1,
1/2, 1/4, 1/8, 1/16).

mana=

//技能 1 级时所需要的魔法值，受 manashift 影响，比如 MANA=16，SHIFT=7，实际需要就是 8 点法力。

lvlmana=//在前一级别基础所增加或减少的魔法值，不受 manashift 影响。

interrupt=.

//技能是否能被打断。1 ＝ yes

InTown=.

//技能是否能在城镇中使用,1=yes

aura=//技能是否是个光环 1=yes

periodic=

//技能是否为你周期性的攻击？1 ＝ yes (比如 thunderstorm/blade shield)

perdelay=//周期性攻击的时间间隔

ffinishing=

//技能能否释放刺客的聚气

passive=.

是否为被动技能？1 ＝ yes

progressive=

//技能被使用后是否能提升？1 ＝ yes

general=//每个人都拥有的技能，1 ＝ yes

scroll=is skill from a scroll only? 1 for yes (scroll/book
identify and town portal only)

//技能是否只能充卷轴中被使用

calc1-4=calculations for the skill

//技能的计算字段

\*calc1-4 desc=English descriptions of the calculations
(not used in game.)

//技能计算字段的解释

Param1-8=various parameter settings.

//各种设置的参数

They also need to be copied when skill swapping in order to give svr/clt functions
good parameters.

\*Param1-8 Description=English descriptions of the calculations
(not used in game.)

//上面字段的解释，游戏不读入

InGame=is skill in game? 1 for yes.

技能在游戏中？1 ＝ yes

ToHit=bonus percent chance to hit with skill at level
1

//技能为 1 时的攻击奖励

LevToHit=addition bonus percent chance to hit added with
each additional skill level.

//每个额外技能级别对攻击的额外奖励

ToHitCalc=not sure. only used on Valkyrie, bash, and
stun....

//不确定，只在 Valkyrie, bash, and stun..中使用

ResultFlags=not sure. various numbers...

//不确定，各种各样的数字

HitFlags=no idea. only a 2 on telekinesis/rabies...any
ideas?

//没想法。只在 telekinesis/rabies 中使用 2

HitClass=

//没想法，在 6 个技能中使用各种数字。

Kick=//技能是否使用踢来进行攻击？1=yes

HitShift=//对命中的作用和 manashift 一样

SSrcDam=//看到多重箭了吗？那个技能这里有个 96，96/128=3/4，多重箭的 3/4 伤害就是这么设的

MinDam=// slevel ＝ 1 时的最小物理伤害

MinLevDam1-5=//最小伤害的增量。1 到 5 分别是技能等级为 2-8, 9-16, 17-22,
23-28 and 29+ 时的伤害增量 MaxLevDam1-5=//最大伤害的增量。1 到 5 分别是技能等级为 2-8, 9-16, 17-22, 23-28
and 29+ 时的伤害增量

DmgSymPerCalc=//作为一个变量来增加伤害。

EType=//攻击的元素种类，. fire, cold, ltng, pois, mag

EMin=minimum elemental damage at slevel 1

// slevel ＝ 1 时最小元素伤害

EMinLev1-5=//最小元素伤害的增量。1 到 5 分别是技能等级为 2-8, 9-16, 17-22,
23-28 and 29+ 时的伤害增量

EMax=maximum elemental damage at slevel 1

slevel ＝ 1 时最大元素伤害

EMaxLev1-5=//最大元素伤害的增量。1 到 5 分别是技能等级为 2-8, 9-16, 17-22,
23-28 and 29+ 时的伤害增量

EDmgSymPerCalc=increased damage from synergy bonuses.

//synergy，是暴雪发明的，给技能按百分比加成伤害……

ELen=length of time for cold/poison in 25ths of a second.

// cold/poison 的持续时间，以帧为单位

ELevLen1-3=)

//增加元素的持续时间，1 到 5 分别是技能等级为 2-8, 9-16, 17-22, 23-28 and 29+ 时的伤害增量

aitype=

//不能确定，看起来象攻击物品的类型。能确认的是，除 frozen armor 和怪物的 frozen armor 外，只在刺客的技能中使用。

aibonus=

//不清楚，攻击物品奖励？

cost mult=

//不清楚。可能是物品上有技能时，价格的乘数

cost add=n

//不清楚。肯能时物品上有技能时，价格的增加数。
