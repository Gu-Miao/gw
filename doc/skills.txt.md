# skills 文件详解

> 作者：llssss4308

常用的 txt 包括 cubemain.txt（合成公式）runes.txt（符文之语）experience.txt（升级经验）itemratio.txt（物品掉率），weapon,armor,glove,boot（各种装备），Properties（装备属性）这些文件咱们慢慢谈怎么改。会改这些文件就可以做自己的物品和符文之语了。

## 一、入门篇

首先使用 d2excel 软件打开 skills.txt 文件。
有很多数据，不用害怕，我们先熟悉 3 个字段，就是文件最前面的三列。
Skill 是技能的名称，在这里就是游戏中所有技能的名字，你要在之后的修改中慢慢熟悉这些英文。

Id 是每个技能在列表中的位置，相信这些数字没有什么难理解的。
Charclass 是技能拥有者的名称字段简写。Ama 是亚马逊、sor 是女巫、nec 是亡灵、pal 是骑士、bar 是小野、dru 是小德、ass 是刺客。对应 skill 字段的技能名称，我们可以很容易的明白这是角色使用的 210 种技能。我们要修改的也就是他们。

入门的修改很容易，还记得在召唤过影子大师之后，当影子被 diablo 秒杀之后，还要等技能从红色状态变回正常状态时的尴尬局面么？那是技能的延迟所造成的。施法延迟本来是为了避免魔法师使用无差别的强力魔法技乱射而加入的限制。但是由于魔法延迟造成游戏时的节奏中断让人感觉也不好，就仿佛好不容易顶了经验神殿，但是偏偏身上没有了魔法瓶一样。我们现在就把这让人讨厌的魔法延迟去掉。

向右侧拖动，大约在 3/5 处，我们可以找到 delay 字段，这个字段就是控制技能延迟的时间的，把这一列清空。好的，入门的修改完成了，将文件保存。加入参数后，运行游戏，是不是所有的魔法技能的施法延迟都消失了。恭喜，你的第一次技能修改已经成功，我们可以开始新的旅程了。

## 二、基础篇

完成了入门篇的修改，是不是不再惧怕 skills 文件中的众多字段了，那么我们就开始基础的修改。为了方便你参考教程修改，我将按照不同的功能区域进行讲解。

1。召唤技能区。

召唤技能是最简单的修改对象之一。记得在我最初玩游戏时，没有办法联网，一个人在怪物的世界中挣扎，就是再厉害也没有成功感。相信喜欢使用召唤角色的玩家都梦想者召唤出成群的强力怪物，可惜的是，强力怪物都只能召唤一个，而且德路伊的灵无法重复召唤实在是可惜。不用担心，我们现在就来讲解如何召唤多个强力怪物（例如：女武神、影子大师、熊、石魔等等）

我们将滑动杆拉到大约距左边 1/4 处，我们看到 summon、pettype、petmax、summode 四个字段，这就是我们的召唤技能一区。其实要修改的内容很少，只是 petmax、summode 两个字段的内容。

Summon 是召唤物的名称，有些像 skill 字段，是方便你认识的字段。Pettype 是召唤物的类型，和 pettype.txt 文件相关，你不用修改。
Petmax 字段就是你可以召唤的同类怪物的数量上限。在这里你可以直接填入数字，结果就是即使你只有 1 等级的该项技能，那么也可以召唤出相应数量上限的怪物。如果你希望合理的增加数量那么向你提供两个字段：1。lvl 字段，你可以使用 lvl/2 或者 lvl\*2 这样你所召唤的怪物数量就会和你的技能相关。当然也可以使用加法或减法。2。如果希望限制数量的上限，那么可以使用 “min(lvl,n)” 这样你没次升级都可以多召唤出一个怪物，然而召唤的数量会有 n 的限制。当然，字段中的 lvl 也可以添加运算符。

Summode 是个必要的参数，他是你的召唤技能的召唤方式代码。如果希望你的召唤物数量可以超过 1，那么就应该将这个参数字段写入 S1。比如说，你的影子大师的这个代码就是 NU，NU 是 NULL 的缩写，即“空”，所以你即使改了 petmax 字段，但是如果 summode 字段没有修改，那么没多召唤出一个影子大师，原来那个就会消失。

好了，这样就修改完了，如果还想修改召唤技能，请看后面进阶篇的召唤技能区。

召唤物名称：

- dopplezon 亚马逊的诱饵；
- valkyrie 亚马逊的女武神；
- hydra1 女巫的九头火龙，但是是个非正规的召唤技能，不建议修改；
- necroskeleton 亡灵的召唤骷髅；
- ClayGolem 亡灵的粘土石魔；
- Bonewall 亡灵的骨墙，也是比较特别的召唤技能，不建议修改；
- Necromage 亡灵的复活骷髅法师；
- BloodGolem 亡灵的鲜血石魔；
- Bonewall 亡灵的骨牢，非正规召唤术，不建议修改；
- IronGolem 亡灵的钢铁石魔；
- FireGolem 亡灵的火焰石魔；
- Revive 亡灵的复活怪物，很特别，因为复活的怪物形象和尸体一致，这个技能\* 是没有名称的；
- boneprison1 diablo 的骨牢，不用改了吧；
- druidhawk 小德的召唤乌鸦；
- plaguepoppy 小德的召唤剧毒花藤；
- oaksage 小德的橡木智者；
- spiritwolf 小德的召唤鬼狼；
- cycleoflife 小德的召唤吸血花藤；
- heartofwolverine 小德的狼獾之心；
- fenris 小德的召唤狂狼；
- vinecreature 小德的召唤吸魔花藤；
- spiritofbarbs 小德的荆棘之灵；
- druidbear 小德的熊宝宝；
- bladecreeper 刺客的第一个飞镖，很特别既有投射字段，又有召唤字段，不建\* 议修改；
- chargeboltsentry 刺客的闪电球陷阱，刺客的陷阱全部都是召唤属性，具体修\* 改在进阶篇会有讨论；
- wakeofdestruction 刺客的火焰复苏陷阱；
- shadowwarrior 刺客的召唤影子；
- lightningsentry 刺客的连锁闪电陷阱；
- infernosentry 刺客的复活地狱火陷阱；
- deathsentry 刺客的尸爆＋闪电陷阱；
- shadowmaster 刺客的召唤影子大师。

  至此，基础篇的召唤区结束，如果希望更深层次的修改请看进阶篇。

  2。投射魔法区。

  投射魔法区是比召唤区稍微复杂一点的，但是在基础篇中，我们只讨论几种很简单，不牵涉到算法的技能修改。不用担心，很容易，也很有趣。

  在很靠近左侧的区域中有几个很重要的字段：srvstfunc、srvdofunc；srvmissile、srvmissilea、srvmissileb、srvmissilec。
  其实不用怕，用到的字段并不多。

  srvstfunc 字段是用来限定技能使用前提的，比如说如果没有箭矢，就无法使用弓箭技能；如果没有标枪，就无法使用标枪投射；如果没有尸体，就无法使用尸爆；没有爪子就无法使用雷爪。当然，如果你希望不配爪子就使用雷电爪，那么把这个字段雷电爪的相应数字 23 清空就可以了。不过近身攻击技能的修改我在“技能修改详细解说（中篇）”中会有讲解。

  Srvdofunc 是个最关键的字段，他定义了你的投射技能的方式，现在我们只讲解 3 种最简单的不牵涉算法的投射技能，分别为螺旋型投射、横向投射和新星投射。

  其中螺旋型投射的典型是圣骑士的魔法锤；他的 srvdofunc 字段代码为 73；横向投射的典型是女巫的火墙；他的 srvdofunc 字段代码为 24；
  新星投射的典型是女巫的霜之新星；他的 srvdofunc 字段代码为 22。

  请注意一点，在修改投射技能时尽量不要更改已经有 srvdofunc 属性的技能，这样可能会产生数据冲突，造成 we got a big error here 的问题。

  怎么解决呢，让我们看 srvmissile、srvmissilea、srvmissileb、srvmissilec 字段，我称他们为投射代码字段区，其实这四个字段中的代码属性都一样，所以很容易扩展。

  我们来注意一个细节，如果你用的是 d2excel 打开的 skills.txt 文件，那么将横向的滑动杆向右拖动，让 srvdofunc 字段位于最左侧，那么你恰好可以看到 srvmissile 字段。如果你仔细观察他们，你会发现，所有在 srvmissile 字段中有内容的技能，他的 srvdofunc 字段全部是空的，为什么呢，因为这些技能的投射物的属性不在 skills 文件中定义，他们直接在 missiles 文件中定义，包括单一的投射物、二段投射物、波浪式的投射物。他们的显示字段和攻击伤害属性是一致的。所以在 srvdofunc 字段中就不需要定义了，这些技能就是我们可以用于扩展的资源。

  独立投射物代码：

  - magicarrow 魔法箭矢；
  - firearrow 火箭；
  - coldarrow 冰箭；
  - poisonjav 剧毒标枪；
  - explodingarrow 爆裂箭；
  - lightningjavelin 闪电标枪；
  - icearrow 冰冻箭；
  - plaguejavelin 毒裂标枪；
  - immolationarrow 牺牲之箭；
  - freezingarrow 冰封之箭；
  - lightningfury 闪电冲击标枪；
  - firebolt 火球；
  - icebolt 冰弹；
  - iceblast 大冰弹；
  - fireball 大火球；
  - lightningbolt 闪电；
  - glacialspike 冰尖柱；
  - frozenorb 冰封球；
  - bonespear 骨矛；
  - holybolt 圣光弹；
  - bomb in air 刺客的火焰投射，但是比较特别，不建议使用。

  请注意，虽然螺旋型、横向投射、新星投射不牵涉到数量算法，但是在修改时还是要进行投射字段的复制添加。

  因为 srvmissile 字段是默认的投射区，所以在修改时要将其清空，这样在显示时才会美观。

  现在我们要把目光转移到下一个投射区，在接近左侧的 3/5 的位置中有投射技能的代码区域，从 cltdofunc 字段开始，有 cltmissile、cltmissilea、cltmissileb、cltmissilec。现在你理解这个投射区就容易多了吧，cltdofunc 字段是技能的图像显示代码，如果你希望你修改出的辉煌技能正常显示，这个字段就是必须要改的了。在这个字段中：
  螺旋型投射代码为：35；
  横向投射代码为：26；
  新星投射代码为：25；
  而 cltmissile 字段和 srvmissile 字段类似，为了显示的美观我们也要把这个字段中的代码复制到 cltmissilea、cltmissileb、cltmissilec 中，至此，我们基础篇中的投射技能区的所有字段都拥有了。然后就是例子：针对我在上面给出的独立的投射技能代码，你可以进行以下的修改
  1、螺旋型投射：srvdofunc 字段修改为 73，将 srvmissile 字段中的投射物代码复制到 srvmissilea 中。Cltdofunc 字段修改为 35，将 cltmissile 字段中的投射物代码复制到 cltmissilea 字段中。然后就可以存盘完成了。
  2、横向投射：srvdofunc 字段修改为 24，将 srvmissile 字段中的投射物代码复制到 srvmissilea 中。Cltdofunc 字段修改为 26，将 cltmissile 字段中的投射物代码复制到 cltmissilea 字段中。然后就可以存盘完成了。补充，这个技能是右键技能，可以凭空施放。
  3、新星投射：srvdofunc 字段修改为 22，将 srvmissile 字段中的投射物代码复制到 srvmissilea、srvmissileb、srvmissilec 中。Cltdofunc 字段修改为 25，将 cltmissile 字段中的投射物代码复制到 cltmissilea 字段中。然后就可以存盘完成了。注意，新星技能的投射物数量不在 skills 文件中，所以投射数量没有办法限制，如果你用他释放大型的投射技能会产生停顿的。
  如果你再仔细一些就会发现，所有的有个性的投射技能他们的投射物代码字段都是在 srvmissilea、srvmissileb、srvmissilec 和 cltmissilea、cltmissileb、cltmissilec 中，为什么呢，这是因为避免默认的 srvmissile 和 cltmissile 中的字段与技能发生冲突，所以我建议你在修改投射技能时将 srvmissile 和 cltmissile 中的字段清空。但是是否绝对不能共存呢？也不是，如何将默认技能和扩展技能组合在一起，我会在进阶篇的投射区中给予讲解。
  至此，基础篇的介绍就结束了，如果你还能理解，而且希望更深入的进行修改，请继续观赏下面的进阶篇。
  三、进阶篇

1。召唤技能区。

我们回到基础篇中提到的召唤技能区，现在我们要看的是召唤物他们的技能区域，就是 sumskill1、sumsk1 calc………sumskill5、sumsk5 calc 字段。看起来很多，但是其实只是两个字段 sumskill、sumsk calc。
你是否记得小德的灵拥有光环、召唤的骷髅法师可以施法、亡灵的火焰石魔拥有圣火光环。这都是这两个字段的威力。
Sumskill 字段是召唤物拥有的技能，比如魔法骷髅师的 NecromageMissile、火焰石魔的 holy fire、橡木智者的 Oak Sage Aura。
NecromageMissile 是技能文件中的一项，所以说在召唤技能中可以做到技能间的嵌套；而 Oak Sage Aura 实际上就是一种灵气技能，但是你没能用，让你的灵用了。当然最明显的还是刺客的陷阱技能，刺客的陷阱技能是召唤属性，但是陷阱会发射魔法，却是因为陷阱使用的他所拥有的魔法技能。所以你可以在技能中添加让召唤物拥有光环、或者说让你的陷阱投射出两种不同的魔法。在后面的例子中你可以轻易的明白。
sumsk calc 字段是怪物的技能等级，你同样可以使用 lvl 字符串，这样你的怪物拥有的技能就会和他本身的技能一致，在我的补丁中，火焰石魔的圣火威力就会根据等级改变。你还可以使用"min(lvl,n)"字段来限制召唤怪物的私人技能。一切由你作主。
对于怪物的技能添加要注意一些事情，例如影子大师是不能添加灵气技能的，而德路伊的灵也是不能添加攻击技能的，所以很多扩展还需要你自己去探索。想更进一步，看后面的资深篇吧。
2。投射魔法区。
我的第一个投射魔法修改不是新星、也不是螺旋、更不是横向，说实话，横向是我刚刚发掘出来的。我第一个投射魔法是改的多重攻击。就是多重投射打开了我修改技能的大门。
记得在刚刚拥有了第一个 BT 物品后，我用亚马逊不停的打物品，那时用的就是亚马逊的多重箭。但是多重箭威力太弱，我一直梦想着拥有着多重攻击能力的冰封之箭。所以我就开始了修改技能的探索。
我将多重箭和牙放在一起做比较，终于发现了规律。现在就让我们深入投射魔法区去学习拥有数量叠加的技能修改和新式的组合魔法。
经过了基础篇中的投射魔法的学习，相信你对于这两个投射区已经比较熟悉了，但是现在我们还要详细的说明另外一个属性区：字段 calc1、*calc1 desc、………calc4、*calc4 desc 和 param1、*param1 description、………param8、*param8 description。
其实也就是 calc、*calc desc 和 param、*param description。现在我们就讲解一下：
以多重攻击和网状攻击为例。
多重攻击的技能有两种，分别是亚马逊的多重箭和亡灵的牙，他的 srvdofunc 代码是 8、cltmissile 字段代码是 17。
网状攻击的技能有一种，还有类似的三种，例如女巫的闪电球，女巫的闪电代码是通用的。他的 srvdofunc 代码是 17、cltmissile 字段代码是 23。
之所以提到这两种技能是因为多重投射和网状投射是可以通过算法来增加投射物的数量的，只是这里又会牵涉到字段 calc1、*calc1 desc、………calc4、*calc4 desc 和 param1、*param1 description、………param8、*param8 description 的内容。
现在我们看多重攻击的 srvmissile 字段区，这个字段里面是空的，但是后面的 Sa（S 是 srvmissile 的缩写）是拥有投射代码的，Sb、Sc 为空。而相应的 cltmissile 字段区，这个字段里面为空，后面的 Ca、Cb 是拥有投射代码，但是 Cc 是为空的（C 是 cltmissile 的缩写）。所以你在修改时就要注意，把相应的投射物代码填入应该的字段内。
我们再来看网状攻击的 srvmissile 字段区，这个字段里面是空的，但是后面的 Sa、Sb、Sc（S 是 srvmissile 的缩写）是拥有投射代码的。而相应的 cltmissile 字段区，这个字段里面为空，后面的 Ca 是拥有投射代码，但是 Cb、Cc 是为空的（C 是 cltmissile 的缩写）。同样你在修改时要注意，把相应的投射物代码填入应该的字段内。
到现在为止，我们还是温习基础篇的教程，让我们来看一看如何使你的魔法随等级的提高而变的更多吧。
在 calc、*calc desc 字段区，我们定义了你的投射物的数量算法公式。
多重攻击的算法比较复杂需要两个公式 1。*calc desc 字段的#missiles 他是你投射物数量定义的字符串。注意#missiles 是一个通用的投射物参数名称，任何投射技能的投射物类别字段都可以由他代替。2。*calc desc 字段的 activation frame 是激活投射叠加的字符串。
网状攻击的算法就比较简单，只用一个公式，即*calc desc 字段的#missiles，他定义了你投射的数量。
相应的 calc 字段区对应后面的*calc desc 字段。
当后面是＃missiles 时，calc 字段的内容是代表投射物的数量，一般用的是 “min(ln12,24)”。我的上一个教程中对于字段“min(ln12,24)”他的解释错了，这里给予校正。ln12、ln34、ln56 是最常用的三种简写字段，他们代表的意义是数字。和 param1………param8 区相关。ln12 ＝ param1+lvl*param2；ln34 ＝ param3+lvl*param4； ln56 ＝ param5+lvl*param6。所以说你的投射物的数量在字段“min(ln12,24)”的定义下是和后面的 param1 与 param2 的数值相关的，且最大值小于 24。
当后面是 activation frame 时，calc 字段的内容是代表投射物的叠加属性，一般用的是相应的 param 字段，使用 par1 或 par2、par3、par4 一直到 par8 不定。至于使用那个字段还要和 param1、*param1 description、………param8、*param8 description 区相联系。
因为 calc 字段区使用的全是代表数值的字符串，所以该字段的内容也支持运算，例如使用 ln12/2 就可以有效的限制你的投射数量。
在 param、*param description 字段区中定义的是相应算法的属性。
对于多重攻击，需要填入的字段有两个，对应前面的两个 calc、*calc desc 字段区的内容，分别是 number of missiles、additional missiles per level，这两个字符串都要填入*param description 字段中，而在 param 字段中只能填入与后面的*param description 字段中定义属性相对应的数字。
例如 number of missiles 定义的是投射物的基础数量，就是基数。则前面的 param 字段一般为 2 或 3。additional missiles per level 定义的是投射物每次升级后增加的数量，就是增量。一般前面的 param 字段为 0 或者 1，你也可以填入 2，这样每次升级就会增加 2 个投射物。当然这要依靠前面 calc、*calc desc 字段区中的内容定义。
对于网状攻击，填入的内容和多重攻击是一样的。因为 number of missiles、additional missiles per level 是通用的参数。
例子：
多重攻击的相应参数：srvdofunc 字段修改为 8，将 srvmissile 字段中的投射物代码复制到 srvmissilea 中。Cltdofunc 字段修改为 17，将 cltmissile 字段中的投射物代码复制到 cltmissilea 字段和 cltmissileb 字段中，*calc desc 字段中填入# missiles 和 activation frame，calc 中填入你希望的算法公式以及对应的 param 位置，*param description 字段中填入 number of missiles 和 additional missiles per level，param 中填入你给出的基础数字。
网状攻击的相应参数：srvdofunc 字段修改为 8，将 srvmissile 字段中的投射物代码复制到 srvmissilea 中。Cltdofunc 字段修改为 17，将 cltmissile 字段中的投射物代码复制到 cltmissilea 字段和 cltmissileb 字段中，*calc desc 字段中填入# missiles 和 activation frame，calc 中填入你希望的算法公式以及对应的 param 位置，\*param description 字段中填入 number of missiles 和 additional missiles per level，param 中填入你给出的基础数字。
至此，你拥有了一个可以升级的投射技能，针对我在基础篇中给出的独立投射代码，你可以随意的修改，但是注意，二段投射技能是无法进行投射物的数量运算，所以，一般二段投射技无法叠加。
你是否还意犹未尽？是否想尝试更深层次的技能组合，请继续看资深篇。
四、资深篇

1。召唤技能区。
我们回到召唤技能区，来看一看召唤怪物所拥有的私人技能。
首先我们想到的是骷髅法师的魔法，啊，是叫做 NecromageMissile 的一种技能，你是不是常常为骷髅法师可以施放出四种不同的魔法而感到惊奇，抱歉了，那不是在 skills 文件中定义的。我们可以找到 NecromageMissile 技能，ID ＝ 338 是一种很简单的投射魔法，如果你真的希望可以改的更辉煌一些，也可以参考基础篇和进阶篇的投射魔法区的教程，不过要小心，如果有怪物使用和你一样的魔法时，不要说我没有提醒你。
我们今天的教程主要是关于刺客的陷阱的。
因为刺客的陷阱是召唤物属性，但是却又体现出魔法投射的威力，所以作为一个最好的例子用来讲解召唤技能的技能嵌套，即召唤怪物的私人技能的修改。
首先我们看召唤陷阱中的火焰复苏，啊，是个很美丽的技能，投射出火焰的波浪。但是我希望他在投射火焰波浪的时候还可以施放出冰系的魔法。其实很容易，在 sumskill 字段区里面添加就可以了，字符串为 skills 文件中定义有的技能。然后在 sumsk calc 字段区里面加入等级算法代码字段就可以了。
但是为了让你的怪物的的确确可以使用到你新添加的技能，那么还需要在 monstates.txt 文件中进行怪物的相应的技能添加，这里不再做解释，如果需要请参考 monstates.txt 的文件引导。
这里要解释一下在 sumsk calc 字段区中常见的一种字符串 skill('skillsname'.blvl)，一般对应前面的 sumskill 字段中的 skillsname。这是使召唤技能相互间产生加成效果的参数定义。例如 skill('Dodge'.blvl)代表女武神获得 dodge 的技能，其等级按你的 dodge 的技能等级增长。还有就是刺客的陷阱中，相互技能间的加成效果也是类似的。所以你可以为你的召唤物添加你最得意的技能，并且相互间还会产生加成效果。
如果你还不满意，那么就可以通过 sumskill 字段中的原始数据找到技能所在的位置，然后进行修改，想改成什么样子就看你的爱好了。
因为技能间的嵌套组合太多了，所以就不给出解释，如果你通过了基础和进阶篇的教程，那么相信你在资深篇中的召唤会很轻松的。
2。投射魔法区。
在基础篇和进阶篇中，我们修改的主要还是独立的投射魔法。但是大多数的魔法都是已经定义了特别的攻击方式了，所以要对投射魔法进行进一步的扩展就需要研究那些并非常规的投射魔法技能。
第一步：
我们先从两个投射魔法区进行逐个的比较和解释。
首先我们来看一下女巫的闪电弹：
女巫的闪电弹，由于是特殊的攻击方式，所以 arvmissile 字段区都被占用，且 srvdofunc 字段已经有定义，但是我们来看 srvmissile 字段区（包括 a、b、c）和 cltmissile 字段区。这两个区域中的投射物字符串都是 chargedbolt，这就说明 chargedbolt 本身也是一个威力属性与显示图像字段一致的独立的投射代码。即 chargedbolt 的属性定义在 missile 文件中完全定义了。
然后我们来看一下亚马逊的多重箭，在 srvmissile 字段区和 cltmissile 字段区中出现了两个不同的字段代码，分别是 multipleshotarrow 和 multipleshotbolt。这就意味着，这个技能是一个由多个投射物代码组合形成的投射技。所以这种投射物代码不利于扩展。同样，我们可以看到女巫的火墙、地狱火、亚马逊的炮轰等都不是独立的投射。
为什么讲这些呢，为的是对基础篇中的独立投射物代码字段进行补充。因为如果只是希望改变投射物的样子而不修改其原有投射方式，那么仅仅需要将投射物代码进行替换就可以达到修改效果。
资源：补充的独立投射物代码
guidedarrow，亚马逊的导引箭，因为定义有跟踪属性，不建议修改；
chargedstrikebolt，亚马逊的闪电攻击和女巫的闪电球一致；
lightningstrike，亚马逊的闪电攻击和女巫的闪电一致；
chargedbolt，女巫的闪电球；
frostnova，霜之新星，不建议修改；
nova，新星，不建议修改；
chainlightning，连锁闪电，但是属二段投射，不能进行数量叠加；
meteorcenter，陨石，坠落技；
blizzardcenter，暴风雪，坠落技；
teeth，亡灵的牙；
poisonnova，剧毒新星；
bonespirit，骨灵，有跟踪属性，不建议修改；
blessedhammer，骑士的魔法锤；
firestormmaker，德路伊的地火蔓延；
erruption center，德路伊的地裂，坠落技；
twister，德路伊的小旋风；
shockwave，变成熊时的震波；
tornado，德路伊的大旋风；
shock field in air，刺客的电网投射，比较特别，不建议修改其代码；
第二步：
了解了可以用来进行修改的技能之后，我们来看一下这些投射物在不同的形式下的表现：
A。螺旋型：由于螺旋型的魔法要求魔法投射物的投射距离相当长，所以在不改变 missile 文件中投射物飞行距离的情况下，投射物一般将威力范围会相当的小，并不是很好的扩展形式。
B。横向型：横向型的典型是女巫的火墙，firewallmaker 从你鼠标点击的位置开始向垂直于你的方向的两侧延伸，是一种非常好的扩展形式。但是由于投射物字段的限制，相当的投射技能在进行横向扩展时会出现有威力，但是却没有显示的结果。只有个别的投射技能显示是正常的。分别是：
亚马逊的两个剧毒标枪；
女巫的火墙和冰峰球；
德路伊的火焰风暴。
已经测试过无显示的是：
亚马逊的冰封之箭和牺牲之箭还有闪电投射；
女巫的冰尖柱和闪电链；
德路伊的火焰滚石。
其他的投射没有测试，你可以自行测试。
C。新星型：这个形式已经被大家很好的测试过了，几乎所有的投射物都可以用新星技能进行扩展，但是新星型的数量是固定的，在扩展时要考虑到技能对电脑运算的影响。
D。多重攻击：这个形式也已经比较成熟，唯一的 BUG 就是会产生算法的错误，只要你在扩展时注意到可以扩展的 par 字段和适当的 missile 算法就可以了。投射物会以扇型的形式向外发射。这个技能也是很好的扩展形式，尤其是可以通过玩家的升级来实现威力的叠加，比起新星技能有着很大的优势。同时也是最实用的扩展形式。
E。网状攻击：这个技能由于会发生投射物之间的交错飞行，所以在图像显示上比多重攻击更加复杂，而且攻击的准确率比较底，是个好看不中用的扩展形式。所以最好只是对低等级的投射魔法进行扩展。
熟悉上面的特征后，我们资深篇的第二步就结束了。
第三步。
如果希望很好的扩展投射技能，那么你必须对所有的投射物的大致表现形式有一定的了解。
首先是单一的简单的投射物，即投射物是一个个体，像箭矢、火球等，这一类的扩展没有任何限制，适用于多重、网状。
然后是在地面蔓延的投射物，即女巫的火墙、德路伊的地火蔓延。这类投射物适合用于横向型扩展和螺旋型扩展，因为在投射物经过后会产生持续的魔法效果。
接下来的是具有投射轨迹的投射物，比如女巫的冰峰球、亚马逊的剧毒标枪。因为这种投射技能如果使用多重攻击会产生持续的大面积的魔法效果，对于电脑的运算极为不理，所以不建议进行叠加扩展。因为可以显示轨迹，所以极为适用于横向型投射，而冰峰球如改为螺旋投射更会产生保护角色的效果。
最后是两种比较特别的投射个体，分别是刺客用陷阱技投射出的火焰波浪和巴尔的冰属性波浪。他们的代码字段分别为 wake of destruction maker 和 baal cold maker；大家注意 maker 字段，很多投射代码都有 maker 比如说 dialbo 的 diabwallmaker，这些技能的显示定义是连续的一串调用，在 missile 中，有些类似二段投射。你可以直接调用投射代码产生相应效果，但是由于二段投射不支持数量叠加，所以建议用于螺旋、横向扩展，而用于新星扩展则威力过大，不建议。更好的方法是将其用于组合技的扩展，组合技能也是我们资深篇要讲的内容，也就是最后一步，让我们来看看如何进行不同投射技能的组合。
第四步：
还记得我们在基础篇和进阶篇中，为了显示美观将 cltmissile、 srvmissile 字段中的投射代码清空的步骤么。cltmissile 和 srmissile 字段中的内容是什么呢？这两个字段中的投射物代码不需要任何定义，只要两个字段中拥有同一个独立投射物代码字符串，那么程序就会调用默认的处理函数，将投射技能显示出来。即 srvdofunc 和 cltdofunc 字段不会对 cltmissile 和 srmissile 产生任何影响。如果你在 cltmissile 和 srmissile 字段中填入一个独立的投射物字符串，然后在 cltmissilea、cltmissileb、cltmissilec 和 srmissilea、srmissileb、srmissilec 字段区填入不同的投射物字符串，那么后者就会调用 rvdofunc 和 cltdofunc 字段中的定义来处理 cltmissilea、cltmissileb、cltmissilec 和 srmissilea、srmissileb、srmissilec 字段区中的数据。所以变会产生技能组合的现象。
技能组合是否合法？你可以看到其实有些投射魔法本身的 cltmissilea、cltmissileb、cltmissilec 和 srmissilea、srmissileb、srmissilec 字段区中的字符串就不统一，因为本身 rvdofunc 和 cltdofunc 字段定义的算法就是组合算法。
方向性：因为默认的投射区显示是将投射物从角色所在点向角色所面向的方向发射出去，所以对于网状、多重、新星攻击来讲，默认的投射物反而会造成显示上的不美观；但是对于螺旋投射和横向投射就会产生直线穿越螺旋圆环和十字型或三星型的美丽效果。可惜的是拥有投射轨迹的投射物字符串代码不多，现在已经测试的就上面的几个。
对于剧毒标枪和火墙类来讲会由于毒气、火焰的延迟效果产生十字型的显示效果；而对于冰峰球和短距的地火蔓延来讲就会产生三星型的显示效果。
但是由于默认投射物可以与扩展型投射物不一致，所以你的组合模式就可以完全打破传统的观念。要注意一点，不同魔法属性的投射物所需定义的魔法威力加成并不相同，如何加成在上篇的外传中将有介绍。所以我建议在进行不同的投射物的组合时，挑选魔法属性相同的投射技能进行设计。
至此，我的技能文件详细教程上篇结束，之后会有一个外传来介绍一些零散的知识。
我的信箱是llssss4308@etang.com，计算机本科学历，现在正在找工作，希望能够做中国自己的游戏。哪位玩游戏的同志有机会的告诉我一声。

技能修改详细解说（下篇） 作者：llssss4308
读过上篇的朋友们相信已经可以将大多数的角色调整为适合自己性格的技能人物，但是对于圣骑士、野蛮人和刺客来讲，可以扩展的召唤或投射技能并不多。所以我们在中篇里面就着重讲一下有关近身技能的扩展。

一、入门篇

使用圣骑士的玩家们一定相当的喜爱骑士的 zeal 技能，即白热，可以连续攻击 5 次的近身攻击技能。如果能够攻击更多的次数，那么面对怪物的围攻或者在攻击 Boss 时就会更加迅速。所以我们从增加连击技的连击次数入手，来介绍近身技能的修改。
首先，在暗黑的角色技能中有三种技能是拥有连击属性的，他们分别是：
亚马逊的 Fend 技能，连击次数上限为 12，skills 文件中的 ID 为 30；属性代码 srvdofunc 和 cltdofunc 字段分别为 13、21；
圣骑士的 Zeal 技能，连击次数上限为 5，skills 文件中的 ID 为 106；属性代码 srvdofunc 和 cltdofunc 字段分别为 13、21；
德路伊变身为狼之后的 Fury 技能，连击次数上限为 5；属性代码 srvdofunc 和 cltdofunc 字段分别为 13、21；
从上面的例子可以看出，连击技能的属性代码均为 13、21。并且其连击上限是可以调整的。我们以 zeal 技能为例，将横向滑动杆向右侧拖动，移动到 calc、*calc desc 和 param、*param description 区，这个区我们称之为属性定义区域。其中 calc 定义了技能的算法；*calc desc 定义了技能的属性；param 中是算法中需要使用到的数字参数；而*param description 则纯粹是注释用的字段，不会影响任何属性。但是就是这些注释字段，为我们进行技能调整提供了最好的参考。我们看 zeal 的\*param6 description 中的注释：“Max targets”；前面的 param6 中是数字 5。你可以忽视 zeal 的算法，仅仅依靠修改 max targets 的数值就可以达到调整连击次数上限的目的。
好了，我们将 param6 中的字段改为 12，然后保存，进入游戏，怎么样，很简单吧。Fury 技能的修改与 zeal 技能完全一致，而 fend 技能只需要修改 calc1 中的字段就可以了。因为 fend 技能没有使用算法来实现，直接就可以进行 12 次的连击。
至此我们入门篇的介绍就结束了，如果你还不满意，那么请看我们的基础篇。
二，基础篇。

1。坠落型魔法和喷涌型魔法
不知道大家还记不记得在我们的上篇中讨论投射技能时忽略了对陨石、暴风雪、火山、毁天灭地、地裂等魔法技能的讨论，如果你仔细观察就会发现，这些技能都是右键技能，即魔法在你鼠标所在位置开始运行，不会发生移动（毁天灭地和飓风例外）。这些技能我成为坠落型和喷涌型技能。对于这些技能来讲，其实都应该属于二段投射。因为这些魔法技能的属性定义和算法都是在 missiles 文件中定义的，在 skills 文件中并未给出关键性的描述。其属性代码 srvdofunc 和 cltdofunc 字段大多为 28、28。
因为我们的技能修改仅限于 skills 文件内部，所以对于这些二段投射技能，我们只能在攻击范围和攻击频率上进行调整。这样就要求我们详细了解 calc、*calc desc 和 param、*param description 区，这个区我自己命名为属性定义区域。
观察属性定义区域，我们会接触到许多重复的字段，这些字段是有着固定的意义的。
资源：
Meteor：陨石，ID56，投射物代码 meteorcenter，关键字段 param1（攻击半径）param2（每次升级后增加的攻击半径，默认值为 0，可以改为 1）；
Blizzard：暴风雪，ID59，投射物代码 blizzardcenter，关键字段 param1（攻击半径）param3（攻击频率延迟，默认值为 4，可以改为 1）；
Fist of the Heavens：天堂之拳，ID121，投射物代码 fistoftheheavensdelay，关键字段 param1（二段投射圣光弹基数）param2（每次升级增加的圣光弹数量）；
Molten Boulder：熔浆巨岩，ID229，投射物代码 moltenboulderemerge，关键字段 param1（爆炸攻击半径）；
Eruption：火山爆，ID234，投射物代码 erruption center，关键字段 param1（攻击半径）param2（攻击频率延迟，默认值为 6，可以改为 1）；
Volcano：火山，ID244，投射物代码 volcano，关键字段 param1（融岩攻击范围）param2（攻击频率延迟，默认是 2，可以改为 1）；
Armageddon：毁天灭地，ID249，投射物代码 armageddoncontrol，关键字段 param1（基础攻击持续时间）param2（每次升级延长的攻击时间，默认是 0，可以改为 50）param3（流星坠落的半径，默认是 8）param4（二段投射攻击频率延迟，默认是 8）。注意，由于技能特殊，在 cltcalc、*cltcalc desc 字段还有附加定义。分别是 frames（外形）fall rate（坠落速率）slide rate（移动速率）默认值是 25、25、15，还未进行测试。
Hurricane：飓风，ID250，投射物代码 hurricaneswoosh、hurricanerock、hurricanetree；cltcalc、*cltcalc desc 字段附加定义 debris/frame（3）、height（75）。关键字段 param1（基础攻击持续时间）param2（每次升级延长的攻击时间，默认是 0，可以改为 50）param3（攻击半径）；
Fire Trauma：火焰爆震，ID251，投射物代码 bomb in air，关键字段 param1（攻击半径）；
Shock Field：雷电网，ID256，投射物代码 shock field in air，关键字段 param1（基础投射数量）param2（每次升级叠加的投射物数量）。
请注意，对于攻击半径的参数，我建议不要超过 16，一般在 8 左右就可以了。
2。近身攻击复合魔法
我们来观察普通的近身攻击技能，相当一部分的近身攻击技能的 srvdofunc 字段定义的是 2，代表是一般的砍杀。这些 srvdofunc 字段为 2 的技能就是我们可以用来进行扩展的近身攻击技能，有以下几个：
资源：
Power Strike：ID14；
Impale：ID19；
Vengeance：ID111；
Bash：ID126；
Stun：ID139；
Concentrate：ID144；
Berserk：ID152；
Fire Claws：ID239；
我们参考亚马逊的两种带有魔法攻击的近身攻击技能：
Charged Strike 和 Lightning Strike。
Charged Strike：ID24，在击中怪物的同时释放出和等级相关数量的闪电球。属性代码 srvdofunc 和 cltdofunc 字段分别为 11、19；投射物代码 chargedstrikebolt；关键字段 calc1、*calc1 desc 定义投射物数量；param1（基础投射数量）；param2（按等级附加投射数量）；
Lightning Strike：ID34，在击中怪物的同时释放出连锁闪电。属性代码 srvdofunc 和 cltdofunc 字段分别为 14、22；投射物代码 lightningstrike；关键字段 calc1、*calc1 desc 定义攻击半径；calc2、_calc2 desc 定义二段攻击时的目标数量；param1（自动寻找敌人的范围）；param3（基础的二段投射物投射数量）；param3（每次升级附件的二段投射攻击数量）。
其中 Charged Strike 的投射是网状投射，Lightning Strike 是单一投射。
针对这两个例子，我们可以对 srvdofunc 字段代码为 2 的近身攻击技能进行扩展。并且可以让近身攻击技能复合不同的投射物代码，从而产生相应组合效果。
需要注意的是，如果希望你所添加的辅助魔法技能可以产生按等级加成的效果，我们就必须引入新的一个区域：
Etype、Emin、Emax 字段区，大概在接近右侧末端的地区，一共有 13 个字段。
Etype 中定义的是魔法攻击的伤害属性，有 cold、itng、mag、fire、pois 五个常用字段，分别代表冰冷伤害、闪电伤害、魔法伤害、火焰伤害和毒素伤害。
在 Emin 和 Emax 字段区中就定义了最小和最大魔法伤害基础值。
而在 Eminlev 和 Emaxlev 字段区则定义了相应的魔法威力按等级增加的数量。
如果你希望你的辅助魔法的威力可以按等级进行加成，最好在你修改的技能后面添加相应属性的魔法伤害参数。
外传：
而 EdmgSympercalc 字段则是达到技能间相互加成的关键字段，其算法极为复杂，例如(skill('Charged Strike'.blvl)+skill('Lightning Bolt'.blvl)+skill('Power Strike'.blvl)+skill('Lightning Fury'.blvl)) _ par8 这个字符串是 Lightning Strike 技能的，他表示闪电冲击的闪电伤害按 Charged Strike、Lightning Bolt、Power Strike 和 Lightning Fury 的技能等级之和再乘以 param8 中所给的比例系数进行加成，而比例系数的字符串说明一般为 damage synergy、length synergy、duration synergy、freeze synergy、absorb synergy 等等，均以 synergy 字符串结尾，一般占用 param8 的位置上面的字段，意义分别为伤害加成、长度加成、持续时间加成、冰冻效果加成、吸收加成等等。如果希望增加技能之间相互加成的效果，那么只要将 synergy 字段前面的百分比参数修改的大一些就可以了，甚至还可以修改 EdmgSympercalc 字段中的加成算法，这种修改本身就是一个比较独立的系统，所以列在外传中讲解。
至此，基础篇的教程到此位置，在进阶篇中我们将着重讲解刺客的技能，包括聚气技能和陷阱技能。

## 三、进阶篇

1。陷阱区

刺客的陷阱是一个很特别的技能，虽然是召唤技能，但是召唤出的怪物并不会走动；虽然不是投射魔法，但是陷阱却可以释放魔法攻击。进阶篇中对于陷阱的修改并不难，甚至和基础篇中的魔法区还有几分类似。对于刺客的陷阱，如果说忽视投射方式的修改（因为参考上篇中的投射技能和召唤技能的修改可以做到），那么对于陷阱来讲可以扩展的就是陷阱的攻击次数以及陷阱的持续时间和攻击范围。让我们逐个的研究刺客的陷阱。
Blade Sentinel：刃之守护，ID254，召唤与投射混合技能，关键字段 passivecalc1（攻击次数，默认值为 lvl\*5）召唤属性区略，calc4 定义攻击持续时间算法，param1（基础持续时间）param2（每次升级增加的持续时间）param3（角色最大投射数量）param4（影子和影子大师的最大投射数量）；
Charged Bolt Sentry：电能守护，ID261，召唤技能，关键字段 calc4（定义雷光守卫在增加电能守护的攻击次数上的加成算法“par1 + skill('Lightning Sentry'.blvl)/4“）param1（定义攻击次数）param3（释放的充能弹的数量）param4（每次升级增加的充能弹数量，默认是 0，可以改为 1）相应的召唤物投射技能 BoltSentry：ID306，网状投射，属性代码 17、23，投射物字段 sentrychargedbolt，关键字段 param8（攻击次数）param1（释放的充能弹的数量）param2（每次升级增加的充能弹数量，默认是 0，可以改为 1）；
注意，陷阱技能的修改是牵涉到两层嵌套的修改，不但要修改原始的召唤陷阱技能，还要修改陷阱自己拥有的魔法投射技能。
Wake of Fire Sentry：火焰复生，ID262，召唤技能，关键字段 param1（攻击次数）相应的召唤物投射技能 Wake Of Destruction Sentry：ID281，波浪投射，属性代码 125、70，投射物字段 wake of destruction maker，关键字段 calc4（攻击次数算法定义）param1（基础投射数量）param2（每次升级后的投射物增加数量，默认是 2）param4（最小攻击范围）param8（攻击次数）；
注意，陷阱技能要增加攻击次数的话，一定要两个技能的攻击次数字段都要修改，并且一致，这一点必须注意。
Lightning Sentry：雷光守卫，ID271，召唤技能，关键字段 param1（攻击次数，默认值为 10）相应的召唤物投射技能 sentry lightning：ID313，无属性代码，投射物字段 sentrylightningbolt，关键字段 calc4（攻击次数算法定义）param1（最小伤害）param2（最大伤害）param3（每次升级增加的伤害值）param8（攻击次数，默认值为 10）；
Inferno Sentry：复苏地狱火，ID272，召唤技能，关键字段 param1（攻击次数，默认值为 10）相应的召唤物投射技能 mon inferno sentry：ID311，属性代码 95、77，连续投射，投射物字段 inferno sentry 1，关键字段 param1（攻击长度）param3（两次攻击直接的时间间隔）param8（攻击次数，默认值为 10）；calc3（攻击密度）；
注意，这个技能的算法比较复杂，如果你不熟悉投射魔法算法的话，不建议进行算法上的修改。
Death Sentry：亡者守卫，ID276，召唤技能，关键字段 param1（攻击次数，默认为 5）相应的召唤物投射技能 A。mon death sentry：ID312，属性代码 55、78，尸爆技能，关键字段 param1（最小伤害 40％HP）param2（最大伤害 80％HP）param3（基本攻击半径 10）param4（每次升级后增加的攻击半径 1）param8（基本攻击次数 5）calc4（攻击次数的加成算法 par8 + skill('Fire Trauma'.blvl)/3，即基本次数为 param8 ＝ 5，火焰爆震技能每升 3 级，增加一次尸爆）B。death sentry ltng：ID324，无属性代码，单一投射，投射物代码字段 sentrylightningbolt2，关键字段 param8（攻击次数，默认值为 5）。
至此，所有的刺客的陷阱技能的解释已经完成，下面我们就可以来看一看刺客的 4 个聚气技能。
2。聚气技能区
刺客的聚气技能区可谓别具一格，聚气技能是一个比较复杂的技能，准确的讲，聚气技和终结技形成了二段攻击的概念。如果能够将聚气技能认识清楚，那么对与圣骑士和野蛮人的近身攻击技能的扩展会有很大帮助，现在我们就来了解一下四种表现明显的刺客聚气技。
Fists of Fire：ID259，焰拳；srvdofunc 字段值 35；
Claws of Thunder：ID269，雷电爪；srvdofunc 字段值 35；
Blades of Ice：ID274，寒冰刃；srvdofunc 字段值 35；
Royal Strike：ID280，凤凰攻击；srvdofunc 字段值 34。
比较起来，眼镜蛇攻击和虎击的 srvdofunc 字段值也是 34。
聚气之后的释放是最关键的，在释放时，函数会根据不同的参数调用不同的处理方式。我们不得不再增加一个区域：srvprgfunc 与 prgcalc 字段区，这两个区域中的代码前者代表聚气释放的方式，后者代表释放时数量或面积的参数。
srvprgfunc1 是聚气一次时释放形式定义；srvprgfunc2 是聚气两次时释放形式；srvprgfunc3 是聚气三次时释放形式。
其中对应的攻击方式有：
区域爆炸型 38；
召唤坠落型 40；
四散折线型 37；
召唤新星型 36；
跟踪直线型 41；
螺旋花瓣型 143；
面积爆炸型 39。
然后对应的 prgcalc 字段的属性分别为：
区域爆炸型：爆炸半径；
召唤坠落型：无；
四散折线型：单个方向上的投射物数量；
召唤新星型：无；
跟踪直线型：总共的投射物数量；
螺旋花瓣型：总共的投射物数量；
面积爆炸型：攻击半径。
然后在 srvmissilea、srvmissileb、srvmissilec 中就会对应前面的三次不同的聚气释放的投射物代码。
之后我们还需增加另外一个区域：cltprgfunc1、cltprgfunc2、cltprgfunc3。同样是对应相应的显示代码，分别为：
区域爆炸型 9；
召唤坠落型 14；
四散折线型 11；
召唤新星型 10；
跟踪直线型 15；
螺旋花瓣型 83；
面积爆炸型 9。
而后面对应的 cltmissilea、cltmissileb、cltmissilec 对应前面的三次不同的聚气释放的投射物代码。
这样就可以通过参数的调整将刺客的聚气技能的表现形式变的更加多样化。

## 四、资深篇

1。关于被动掌控技能的研究。
我们从野蛮人的六种武器控制入手，来研究被动技能。
被动技能定义区：
passivestate 字段，这里定义了被动技能的名称。
Passiveitype 字段，这里定义了被动技能作用的物品类型，例如 h2h 是刺客的爪子，在刺客的两个被动技能爪控制和爪格挡中就用到了。而野蛮人的被动武器控制是 swor、axe、blun、pole、thro、spea。类似的在亚马逊和圣骑士等人的技能中也可以添加被动武器控制技能。如果在这个字段中是空白的，就代表被动技能作用于人物自身。
Passivestst1 ～ 3 字段，定义的是被动加成的属性 passive_mastery_melee_th 代表攻击准确率加成；passive_mastery_melee_dmg 代表攻击伤害加成；passive_mastery_melee_crit 代表致命性打击加成；其他技能的相应字段还有：
资源：
passive_critical_strike：亚马逊的 criticalstrike 技能；
passive_dodge 亚马逊的 dodge 技能；
passive_avoid 亚马逊的 avoid 技能；
item_tohit_percent 亚马逊的 penetrate 技能；
passive_evade 亚马逊的 evade 技能；
skill_pierce 亚马逊的 pierce 技能；
manarecoverybonus 女巫的温暖技能；
passive_fire_mastery 女巫的火焰掌控技能；
passive_ltng_mastery 女巫的闪电掌控技能；
passive_cold_pierce 女巫的冰冻掌控技能；注意，以 pierce 结尾代表降低敌人的抗性，以 mastery 结尾代表增加攻击的威力。所以可以作出类似 passive_cold_mastery 的扩展，使原先不能增加攻击威力的冰掌控变成可以对冰系攻击威力进行加成的技能。同样也可以作出类似 passive_fire_pierce 的扩展。
skel_mastery，男巫的骷髅掌控很有特色的技能，ID69，这个字段是空的；
golem_mastery，男巫的石魔掌控，和上一个相似，ID79；
passive_summon_resist，男巫的召唤反抗技能；
maxfireresist 骑士的抗火；
maxcoldresist 骑士的抗冰冻；
maxlightresist 骑士的抗闪电；
item_tohit_percent 骑士的祝福瞄准；
skill_passive_staminapercent 小野的增加耐力；
skill_armor_percent 小野的增加防御；
velocitypercent 小野的增加速度；
fireresist、lightresist、coldresist、poisonresist 小野的自然反抗；
passive_weaponblock 刺客的爪格当；
以上的被动加成技能，我也称为掌控技能，和灵气技能不同，掌控技能占用区域是 passivestate 字段区。
在 passivecalc1 ～ 3 字段中则是对应前面的属性字段所给出的算法，对应后面的 param1 ～ 8 字段中参数产生运算结果。根据这个字段的常用参数算法 ln12 与 dm12 我们可以找到后面的相应参数，对加成效果进行更改。
至此，被动掌控字段区介绍完毕，下面我们来看灵气加成区。

2。灵气加成技能区

灵气加成区是比较复杂的区域，aurastate 字段区紧靠投射字段区，在这个区域里面定义了角色状态、灵气加成方式等等属性，aurastat1 ～ 6 更是拥有极大扩展性的区域，唯一可以与之抗衡的就是召唤技能区中召唤怪物的私人技能了。所以介绍起来比较复杂。
首先我们看 aurastate、auratargetstate、auralencalc、auraangeclac 四个字段
aurastate 字段是指在使用灵气技能（包括一些魔法技能，例如亚马逊的内视）时，角色所拥有的状态；
auratargetstate 字段是指使用灵气技能时，目标所拥有的状态；
auralencalc 字段是灵气持续的时间，例如女巫的火焰之径；
auraangeclac 字段则是灵气的作用范围。
我们首先要明白，灵气技能可以分为两大块，一种是可以作用于自身和友军的灵气；还有一种就是作用于敌人的灵气。
灵气包括很多技能，例如男巫的诅咒就是灵气的后一种形式，而小野的呐喊则属于前一种类型。如果将刺客的灵气技能改一改就可以让她成为和骑士一样的辅助角色。使光环的属性进行叠加。包括护盾技能，其实也是灵气型的一种，同样可以使护盾与灵气一样进行角色间的加成。
然后我们解释 aurastat1 ～ 6 字段区，这里定义了相应状态时的魔法属性；而紧跟在后面的 aurastatcalc1 ～ 6 中怎定义了对应的算法。
这一区域的技能有：（下列各行的字头名称以 aurastate 字段或 auratargetstate 字段内的字符串为标准）
ID8--innersight，亚马逊的内视，aurastat 状态为装甲等级，属对敌人加成的灵气魔法，降低敌人防御等级值为-edmn；
ID17--slowmissiles，亚马逊的慢速箭，aurastat 状态为减慢敌人的投射物速度，属对敌人加成的灵气魔法，降低速率 1/3；
之后，亚马逊的诱饵和女武神在这个状态区也有定义，主要是抗性和力量、敏捷属性的加成；
ID41--Frozenarmor，女巫的冰封装甲，aurastat 字段区的 skill_armor_percent 字符串代表防御加成等级，在后面的 aurastatcalc 字段区是加成算法。相类似的技能还有另外几个护盾技。如 shiverarmor、chillingarmor 等等；
ID52--Enchant，女巫的强化技能，aurastat 字段区 firemindam 定义火焰攻击最小值属性，aurastatcalc 字段区定义算法 enma，然后是 firemaxdam、exma、item_tohit_percent、toht，字符串解释在外传中有；
ID46--blaze，女巫的烈焰之径，仅定义了持续时间；
ID57--Thunderstorm 雷云风暴、energyshield 能量护盾，在这里只是定义了持续时间；
ID66--Amplifydamage，男巫增强伤害，属于对敌人的灵气攻击，即诅咒技能。aurastat 字段区 damageresist 定义伤害抵抗，aurastatcalc 字段区定义伤害算法，初始值-par5；
ID68--Bonearmor 骨盾，aurastat 字段区定义最大和最小伤害吸收；
ID71--Dimvision，仅定义了持续时间和灵气范围；
注：男巫的召唤类技能在灵气区也有定义，主要是召唤物的伤害等级、防御等级、生命值；
ID72--Weaken，男巫的诅咒技能，定义伤害加深 damagepercent，针对敌人值为负，算法为-par5。就是说降低敌人的攻击伤害；
ID74--男巫的尸爆在这里定义了攻击范围，算法参数 ln34；
ID75--男巫的粘土石魔在这里定义了减慢敌人的属性，字符串 item_slow，算法 dm34；
ID76（78、81、82、86）--ironmaiden，terror，confuse，lifetap，attract 男巫的诅咒技，仅定义了范围和时间；
ID87--Decrepify，男巫的诅咒之衰老，降低以下几个属性：velocitypercent 速率百分比；damagepercent 伤害百分比；damageresist 伤害抵抗百分比；attackrate 攻击准确率百分比；默认的值通过 par 参数传递，为-50；
ID90--Thorns，男巫钢铁石魔的附带针刺灵气，thorns_percent 定义了针刺反弹的比例，算法为 ln12；
ID91--Lowerresist，男巫诅咒之降低抵抗，fireresist、lightresist、coldresist、poisonresist 定义属性，-dm56 为算法参数。默认值为降低抗性最小 20，最大 70；
在修改男巫的诅咒技能的时候请注意，和一般的投射魔法不同，大多数的怪物都是直接调用的男巫的诅咒技能，如果你修改的时候过火的话，那么游戏的难度会加大很多。我稍稍的将诅咒改强一些，相信你们玩的时候就会明白了。
下面我们将进入圣骑士的灵气区，同样，这个区的技能怪物也很常用，建议你也不要改的太过火。
ID98 ～ 100 分别是力量、祈祷、抗火三种灵气，持续范围算法 ln12；
ID102 ～ 105 分别是圣火攻击、针刺、反抗、抗冻四种灵气，作用范围算法 ln12；
在这里可以提到一个小窍门，利用 aurastat 字段区的扩展，我们可以把圣火攻击和抗火光环两个光环的魔法属性合而为一，这样以来，比如说我们将力量和反抗光环合并同样可以大大增加灵气的威力。最明显的就是元素抵抗，在元素抵抗的 aurastat 区域中就包括了抗火、抗冰冻和抗闪电三种灵气技能的 aurastat 区域中的魔法属性定义字段。
为了平衡怪物的威力，对于圣骑士的灵气加强我只调整了防御型的灵气。
ID108 ～ 110 分别是祝福瞄准、净化、抗闪电三种灵气，持续范围算法 ln12；
ID113 ～ 115 分别是专注、圣冰冻、活力三种灵气，持续范围算法 ln12；
ID118 是圣光盾，持续时间 ln12，没有范围定义；
ID118 ～ 120 分别是圣电冲击、避难所、冥想三种灵气，持续范围算法 ln12；
ID122 ～ 125 分别是狂热、降低抵抗、复活、元素抵抗，持续范围算法 ln12；
对于 aurastate，auratargetstate，auralencalc，aurarangecalc 四个字段区的了解可以轻松的让你熟悉关于灵气的持续时间、作用范围、作用对象这三个属性的定义。但是要熟悉灵气的作用属性，则需要了解 aurastat1 ～ 6 字段区内的魔法属性字符串定义，我们以圣骑士的灵气技能为例子来了解相应的魔法字符串。
Damagepercent 增加伤害
Hitpoints 补充生命值
Fireresist 抗火
Maxfireresist 抗火最大值
thorns_percent 针刺反弹百分比
skill_armor_percent 增加防御等级百分比
coldresist 抗冻
maxcoldresist 抗冻最大值
item_tohit_percent 武器攻击准确率
item_poisonlengthresist 毒素持续时间百分比
lightresist 抗闪电
maxlightresist 抗闪电最大值
skill_concentration 攻击时被打断的几率
velocitypercent 移动速率
attackrate 攻击频率
staminarecoverybonus 耐力回复速度
skill_staminapercent 耐力增加百分比
toblock 格挡几率
item_undeaddamage_percent 对不死生物的伤害百分比
item_undead_tohit 对不死生物的额外准确率百分比
manarecoverybonus 魔法力回复速度
如果在相应的 aurastatcalc 字段区内的算法为负值，就是减少对应的魔法属性。
其他的参数就不一一列举了。
对于灵气技能的介绍到此为止了，经过一个月的时间，相信大家对技能文件的主要区域都有所了解，更深入的修改还要各位玩家自行去研究。暴雪的数据结构是相当清晰的，所以解读起来也很容易。还有一部分技能会同时用到召唤区和灵气区，也有的是投射魔法区和召唤区同时使用，当然灵气区和投射魔法区的组合也有比如女巫的火焰之径。组合的方式是相当多的，如果你玩透了 skills 文件，那么结合怪物文件和投射物文件，就可以打造出一套完全和过去不同的技能，从而制作一个新角色。
例如说，刺客的陷阱技能就是参照女巫的九头火龙开发出来的，利用召唤术和召唤物自身的私人投射技能来扩展。德路伊的灵，其实是参考男巫的火焰石魔而扩展的。所以说如果你可以掌握这几个关键区域，就可以定义一种新的技能出现。
但是在设计魔法的威力时，因为那几个区域都是定义的属性和算法，所以具体的参数设置还要牵涉到后面的几个参数区，详细的解释我会在外传上介绍的。
现在我们已经了解了投射魔法区、召唤技能区、聚气技能区、被动掌控技能区、参数算法区、灵气状态区。技能文件详细修改教程至此封笔，如果希望学习其他的参数资源请看外传。
资源＋教程，技能修改详细解说（外传）
1。对于技能文件的扩展空间的讨论。
在上篇中我们着重讲解了对于投射物的投射方式以及召唤物数量的修改，这是最基础的，也是最简单的扩展。这种修改并没有对技能的攻击属性有本质的改变，更多的只是数量与形式上的变化。但是在中篇的介绍中我们就了解到了如何对现有的技能作出更深入、更为灵活的扩展。
A。首先是可以利用默认的投射物字段与特殊形式投射物字段相互间的可兼容型来对投射魔法进行扩展。通过这种技术，我们可以使不同的投射魔法组合在一起，产生双重的魔法攻击效果，由于扩展使用的投射物字段的攻击威力在 missiles 文件中有定义，所以扩展出的攻击魔法能出现所希望的结果。
B。然后是利用刺客的聚气型攻击技巧对近身攻击技能进行魔法辅助的扩展。通过聚气型的扩展可以将原本单一的一个近身攻击技能扩展为三种魔法投射技能，配合终结技能组成二段攻击的概念。这是对近身攻击的最有力的一种扩展方式。
C。最后就是利用所召唤出的怪物其自身所拥有的攻击技能进行扩展。其中的典型例子就是火焰石魔的圣火光环和刺客的亡灵守卫陷阱的尸爆＋闪电双重攻击。通过扩展召唤物自身的攻击技能，我们可以做到技能的二次嵌套。并且可以使你的召唤物拥有超过一种以上的攻击方式，这是扩展技能种类最为灵活的方法，例如将你原本使用的骨矛改为陷阱技能，让骨矛陷阱拥有投射骨矛和冻结对方的圣冰光环；又或者让你的火焰陷阱不但可以投射火焰，而且可以诅咒对方。这样一来就可以极大的扩展魔法类的技能。
D。除此之外，对于被动掌控技能和灵气加成技能来讲还可以通过扩展其魔法属性增加加成效果，将两个不同的灵气定义在同一个技能中，也可以极大的减少技能点的消耗。
如果我们通过合理的分类组合将一些相辅相成的魔法技能组合在一起，然后大大缩减所占有的现有技能，那么就可以省下一些技能图像与链接文件作为一些其它技能扩展可以使用空间，进行更深入的扩展。
所以我们需要对每个角色的 30 种技能间的组合效果进行仔细的比较，找出一种最合适的组合方式来进行技能的缩减。我想，技能越少，游戏应该越容易上手，最好每个角色现有的技能都可以缩减为 15 个，这样你在升级的时候，技能点的分配就会容易很多。

2。关于 skills 文件中主要的算法字段说明
par1 ～ 5 ＝ param1 ～ 5
cpa1 ～ 5 ＝ cltparam1 ～ 5
hpa1 ～ 3 ＝ hitparam1 ～ 3
chp1 ～ 3 ＝ clthitpar1 ～ 3
dpa1 ～ 2 ＝ dmgparam1 ～ 2
上面的字段大多为说明型参数，用来为算法提供参考数据。
lvl ＝ skill level
ulvl=unit level
blvl=base skill level
以上字段是和等级相关的算法方式
edmn ＝ elemental damage min
edmx ＝ elemental damage max
edln ＝ elemental damage len
edns ＝"elemental damage min, 256ths"
edxs ＝"elemental damage max, 256ths"
damn ＝ damage min
damx ＝ damage max
dmns ＝"damage min, 256ths"
dmxs ＝"damage max, 256ths"
以上字段是元素伤害和物理伤害的说明字段
rang ＝ range 攻击范围
toht ＝ to hit 攻击频率
ln12 ＝ par1+lvl*par2 关键性的算法，后面的 par1 字段为基本数量，par2 字段为每等级增加数量。
dm12=((110*lvl) _ (par2-par1))/(100 _ (lvl+6)) + par1 关键性的算法，后面的 par1 字段为最小数量，par2 字段为最大数量。
算法说明字段 ln34、ln56 和 dm34、dm56 类似
len=auralen field 灵气的持续时间
rng=aurarange field 灵气的作用范围
clc1~4=calc1 field~calc4 field
ast1~6=aurastat field 定义灵气的各种属性
pst1~5=passivestat field 定义灵气作用后的各种状态和上个字段区相关
pets=petmax field
skpt=skill points field

3。关于参数区的一些说明。
在 2/3 处，有几列字段，分别是 minmana、manashift、mana、lvlmana。
这四个字段定义了技能消耗的魔法值，minmana 定义了技能的最小消耗，mana 定义了技能的最初消耗，lvlmana 则定义了每次升级后，技能所需要增加的魔法值，如果这一个字段为 0，则魔法消耗和技能等级无关，如果为负值，则魔法消耗随技能等级的提高而减少，最明显的例子是女巫的瞬移。
在最右侧，有定义物理伤害运算参数的 Dam 字段区，包括 srcdam ，mindam ，minlevdam1~5 ，maxdam ，maxlevdam1~5 和用来定义技能间物理伤害加成的 dmgsympercalc 字段。
定义魔法伤害的字段区有：eytpe（伤害类型，分冰冻、火焰、闪电、毒素、魔法五种伤害）技能就是依靠这个字段来确认其属性，来实现物品对火焰类或毒素类的加成。Emin、eminlev1~5、emax、eamxlev1~5 定义每次升级时增加的魔法攻击属性。
Edmgsympercalc 定义了魔法攻击相互加成的算法。
持续时间区：在 elen、elevlen1 ～ 3 字段区定义了冰冻冻结时间和毒素持续时间的长短。而 elensympercalc 中定义了相互间的加成算法。
加成算法一般由以下格式构成：
例：(skill('Fire Ball'.blvl)+skill('Meteor'.blvl))\*par8
首先定义可以产生加成的技能，由 skill(‘skillnames’.blvl)来定义加成技能。然后通过 par1 ～ 8 中定义的 synergy 字段来产生加成比例参数，算法公式支持普通的运算符。加成算法可以在任何参数算法字段中出现，并不局限于上面三个加成算法专用字段。 到此为止，对于 skills.txt 文件的解释教程全部结束，能够读懂的玩家可以自行打造自己喜欢的技能。虽然说如此解读暴雪的数据文件有侵犯嫌疑，但是通过原始的数据文件可以更清楚的分析在游戏中无法体现出来的技能属性。我们对于文件数据的分析是为了更深入的扩展现有的游戏模式，同时为了制作中国自己的游戏增加经验。

我的信箱是llssss4308@etang.com，计算机本科学历，现在正在找工作，希望能够做中国自己的游戏。哪位玩游戏的同志有机会的告诉我一声。
