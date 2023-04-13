enum CharacterSkillType {
  active,
  passive,
  lordSkill,
}

enum CharacterSkill {
  // huaTuo
  jiJiu,
  qingNang,

  // lvBu
  wuShuang,

  // diaoChan
  liJian,
  Biyue,

  // liuBei
  renDe,
  jiJiang,

  // guanYu
  wuSheng,

  // zhangFei
  paoXiao,

  // zhugeLiang
  guanXing,
  kongCheng,

  // zhaoYun
  longDan,

  // maChao
  maShu,
  tieJi,

  // huangYueying
  jiZhi,
  qiCai,

  // caoCao
  jianXiong,
  huJia,

  // simaYi
  fanKui,
  guiCai,

  // xiahouDun
  gangLie,

  // zhangLiao
  tuXi,

  // xuChu
  luoYi,

  // guoJia
  tianDu,
  yiJi,

  // zhenJi
  qingGuo,
  luoShen,

  // sunQuan
  zhiHeng,
  jiuYuan,

  // ganNing
  qiXi,

  // lvMeng
  keJi,

  // huangGai
  kuRou,

  // zhouYu
  yingZi,
  fanJian,

  // daQiao
  guoSe,
  liuLi,

  // luXun
  qianXun,
  lianYing,

  // sunShangXiang
  jieYin,
  xiaoJi,
}

Map<CharacterSkill, CharacterSkillType> characterSkillTypeMap = {
  // huaTuo
  CharacterSkill.jiJiu: CharacterSkillType.passive,
  CharacterSkill.qingNang: CharacterSkillType.active,

  // lvBu
  CharacterSkill.wuShuang: CharacterSkillType.passive,

  // diaoChan
  CharacterSkill.liJian: CharacterSkillType.active,
  CharacterSkill.Biyue: CharacterSkillType.passive,

  // liuBei
  CharacterSkill.renDe: CharacterSkillType.active,
  CharacterSkill.jiJiang: CharacterSkillType.lordSkill,

  // guanYu
  CharacterSkill.wuSheng: CharacterSkillType.active,

  // zhangFei
  CharacterSkill.paoXiao: CharacterSkillType.passive,

  // zhugeLiang
  CharacterSkill.guanXing: CharacterSkillType.passive,
  CharacterSkill.kongCheng: CharacterSkillType.passive,

  // zhaoYun
  CharacterSkill.longDan: CharacterSkillType.active,

  // maChao
  CharacterSkill.maShu: CharacterSkillType.passive,
  CharacterSkill.tieJi: CharacterSkillType.passive,

  // huangYueying
  CharacterSkill.jiZhi: CharacterSkillType.passive,
  CharacterSkill.qiCai: CharacterSkillType.passive,

  // caoCao
  CharacterSkill.jianXiong: CharacterSkillType.passive,
  CharacterSkill.huJia: CharacterSkillType.lordSkill,

  // simaYi
  CharacterSkill.fanKui: CharacterSkillType.passive,
  CharacterSkill.guiCai: CharacterSkillType.passive,

  // xiahouDun
  CharacterSkill.gangLie: CharacterSkillType.passive,

  // zhangLiao
  CharacterSkill.tuXi: CharacterSkillType.passive,

  // xuChu
  CharacterSkill.luoYi: CharacterSkillType.passive,

  // guoJia
  CharacterSkill.tianDu: CharacterSkillType.passive,
  CharacterSkill.yiJi: CharacterSkillType.passive,

  // zhenJi
  CharacterSkill.qingGuo: CharacterSkillType.active,
  CharacterSkill.luoShen: CharacterSkillType.passive,

  // sunQuan
  CharacterSkill.zhiHeng: CharacterSkillType.active,
  CharacterSkill.jiuYuan: CharacterSkillType.lordSkill,

  // ganNing
  CharacterSkill.qiXi: CharacterSkillType.active,

  // lvMeng
  CharacterSkill.keJi: CharacterSkillType.passive,

  // huangGai
  CharacterSkill.kuRou: CharacterSkillType.active,

  // zhouYu
  CharacterSkill.yingZi: CharacterSkillType.passive,
  CharacterSkill.fanJian: CharacterSkillType.active,

  // daQiao
  CharacterSkill.guoSe: CharacterSkillType.active,
  CharacterSkill.liuLi: CharacterSkillType.passive,

  // luXun
  CharacterSkill.qianXun: CharacterSkillType.passive,
  CharacterSkill.lianYing: CharacterSkillType.passive,

  // sunShangXiang
  CharacterSkill.jieYin: CharacterSkillType.active,
  CharacterSkill.xiaoJi: CharacterSkillType.passive,
};

Map<CharacterSkill, String> characterSkillNameMap = {
  // huaTuo
  CharacterSkill.jiJiu: "急救",
  CharacterSkill.qingNang: "青囊",

  // lvBu
  CharacterSkill.wuShuang: "无双",

  // diaoChan
  CharacterSkill.liJian: "离间",
  CharacterSkill.Biyue: "闭月",

  // liuBei
  CharacterSkill.renDe: "仁德",
  CharacterSkill.jiJiang: "激将",

  // guanYu
  CharacterSkill.wuSheng: "武圣",

  // zhangFei
  CharacterSkill.paoXiao: "咆哮",

  // zhugeLiang
  CharacterSkill.guanXing: "观星",
  CharacterSkill.kongCheng: "空城",

  // zhaoYun
  CharacterSkill.longDan: "龙胆",

  // maChao
  CharacterSkill.maShu: "马术",
  CharacterSkill.tieJi: "铁骑",

  // huangYueying
  CharacterSkill.jiZhi: "集智",
  CharacterSkill.qiCai: "奇才",

  // caoCao
  CharacterSkill.jianXiong: "奸雄",
  CharacterSkill.huJia: "护驾",

  // simaYi
  CharacterSkill.fanKui: "反馈",
  CharacterSkill.guiCai: "鬼才",

  // xiahouDun
  CharacterSkill.gangLie: "刚烈",

  // zhangLiao
  CharacterSkill.tuXi: "突袭",

  // xuChu
  CharacterSkill.luoYi: "裸衣",

  // guoJia
  CharacterSkill.tianDu: "天妒",
  CharacterSkill.yiJi: "遗计",

  // zhenJi
  CharacterSkill.qingGuo: "倾国",
  CharacterSkill.luoShen: "洛神",

  // sunQuan
  CharacterSkill.zhiHeng: "制衡",
  CharacterSkill.jiuYuan: "救援",

  // ganNing
  CharacterSkill.qiXi: "奇袭",

  // lvMeng
  CharacterSkill.keJi: "克己",

  // huangGai
  CharacterSkill.kuRou: "苦肉",

  // zhouYu
  CharacterSkill.yingZi: "英姿",
  CharacterSkill.fanJian: "反间",

  // daQiao
  CharacterSkill.guoSe: "国色",
  CharacterSkill.liuLi: "流离",

  // luXun
  CharacterSkill.qianXun: "谦逊",
  CharacterSkill.lianYing: "连营",

  // sunShangXiang
  CharacterSkill.jieYin: "结姻",
  CharacterSkill.xiaoJi: "枭姬",
};

Map<CharacterSkill, String> characterDescriptionMap = {
  // huaTuo
  CharacterSkill.jiJiu: "你的回合外，你可以将一张红色牌当【桃】使用。",
  CharacterSkill.qingNang: "出牌阶段限一次，你可以弃置一张手牌，然后令一名已受伤的角色回复1点体力。",

  // lvBu
  CharacterSkill.wuShuang: "锁定技，你的【杀】需要两张【闪】才能抵消；与你【决斗】的角色每次需要打出两张【杀】。",

  // diaoChan
  CharacterSkill.liJian: "出牌阶段限一次，你可以弃置一张牌，然后令一名男性角色视为对另一名男性角色使用一张【决斗】。",
  CharacterSkill.Biyue: "结束阶段，你可以摸一张牌。",

  // liuBei
  CharacterSkill.renDe: "出牌阶段限一次，你可以将任意数量的手牌交给其他角色，若你给出的牌张数达到两张或更多时，你回复1点体力。",
  CharacterSkill.jiJiang: "主公技，当你需要使用或打出一张【杀】时，你可以令其他蜀势力角色打出一张【杀】（视为由你使用或打出）。",

  // guanYu
  CharacterSkill.wuSheng: "你可以将一张红色牌当【杀】使用或打出。",

  // zhangFei
  CharacterSkill.paoXiao: "锁定技，你使用【杀】无次数限制。",

  // zhugeLiang
  CharacterSkill.guanXing:
      "准备阶段，你可以观看牌堆顶的X张牌（X为全场存活角色数且最多为5），然后以任意顺序分配于牌堆顶或牌堆底。",
  CharacterSkill.kongCheng: "锁定技，若你没有手牌，则你不能成为【杀】或【决斗】的目标。",

  // zhaoYun
  CharacterSkill.longDan: "你可以将【杀】当【闪】、【闪】当【杀】使用或打出。",

  // maChao
  CharacterSkill.maShu: "锁定技，你计算与其他角色的距离-1。",
  CharacterSkill.tieJi: "你的【杀】指定目标后，你可以进行判定，若结果为红色，该角色不能使用【闪】。",

  // huangYueying
  CharacterSkill.jiZhi: "当你使用普通锦囊牌时，你可以摸一张牌。",
  CharacterSkill.qiCai: "锁定技，你使用锦囊牌无距离限制。",

  // caoCao
  CharacterSkill.jianXiong: "当你受到伤害后，你可以获得造成伤害的牌。",
  CharacterSkill.huJia: "主公技，你可以令其他魏势力角色选择是否替你使用或打出【闪】。",

  // simaYi
  CharacterSkill.fanKui: "当你受到伤害后，你可以获得伤害来源的一张牌。",
  CharacterSkill.guiCai: "当一名角色的判定牌生效前，你可以打出一张手牌代替之。",

  // xiahouDun
  CharacterSkill.gangLie:
      "当你受到伤害后，你可以进行判定，若结果不为♥，则伤害来源选择一项：1. 弃置两张手牌；2. 受到你造成的1点伤害。",

  // zhangLiao
  CharacterSkill.tuXi: "摸牌阶段，你可以放弃摸牌，改为获得最多两名其他角色的各一张手牌。",

  // xuChu
  CharacterSkill.luoYi: "摸牌阶段，你可以少摸一张牌，然后本回合你为伤害来源的【杀】或【决斗】造成的伤害+1。",

  // guoJia
  CharacterSkill.tianDu: "当你的判定牌生效后，你可以获得此牌。",
  CharacterSkill.yiJi: "当你受到1点伤害后，你可以观看牌堆顶的两张牌，然后交给任意名角色。",

  // zhenJi
  CharacterSkill.qingGuo: "你可以将一张黑色手牌当【闪】使用或打出。",
  CharacterSkill.luoShen: "准备阶段，你可以进行判定，若结果为黑色，你获得之并可以重复此流程。",

  // sunQuan
  CharacterSkill.zhiHeng: "出牌阶段限一次，你可以弃置任意张牌，然后摸等量的牌。",
  CharacterSkill.jiuYuan: "主公技，锁定技，其他吴势力角色对你使用【桃】回复的体力+1。",

  // ganNing
  CharacterSkill.qiXi: "你可以将一张黑色牌当【过河拆桥】使用。",

  // lvMeng
  CharacterSkill.keJi: "若你未于出牌阶段内使用或打出过【杀】，则你可以跳过弃牌阶段。",

  // huangGai
  CharacterSkill.kuRou: "出牌阶段，你可以失去1点体力，然后摸两张牌。",

  // zhouYu
  CharacterSkill.yingZi: "摸牌阶段，你可以多摸一张牌。",
  CharacterSkill.fanJian:
      "出牌阶段限一次，你可以令一名其他角色猜一种花色，然后获得你的一张手牌并展示之，如果猜错花色，该角色受到1点伤害。不论结果，该角色都获得此。",

  // daQiao
  CharacterSkill.guoSe: "你可以将一张♦牌当【乐不思蜀】使用。",
  CharacterSkill.liuLi:
      "当你成为【杀】的目标时，你可以弃置一张牌并将此【杀】转移给你攻击范围内的一名其他角色（不能是使用此【杀】的角色）。",

  // luXun
  CharacterSkill.qianXun: "锁定技，你不能成为【顺手牵羊】和【乐不思蜀】的目标。",
  CharacterSkill.lianYing: "当你失去最后的手牌时，你可以摸一张牌。",

  // sunShangXiang
  CharacterSkill.jieYin: "出牌阶段限一次，你可以弃置两张手牌并选择一名已受伤的男性角色，然后你与其各回复1点体力。",
  CharacterSkill.xiaoJi: "当你失去装备区里的一张牌时，你可以摸两张牌。",
};
