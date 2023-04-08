import 'package:flutter/material.dart';

import 'package:san_guo_sha/cards/model/card_value.dart';

Map<CharacterCardValue, String> characterDisplayNameMap = {
  // qun
  CharacterCardValue.huaTuo: "华佗",
  CharacterCardValue.lvBu: "吕布",
  CharacterCardValue.diaoChan: "貂蝉",

  // shu
  CharacterCardValue.liuBei: "刘备",
  CharacterCardValue.guanYu: "关羽",
  CharacterCardValue.zhangFei: "张飞",
  CharacterCardValue.zhugeLiang: "诸葛亮",
  CharacterCardValue.zhaoYun: "赵云",
  CharacterCardValue.maChao: "马超",
  CharacterCardValue.huangYueying: "黄月英",

  // wei
  CharacterCardValue.caoCao: "曹操",
  CharacterCardValue.simaYi: "司马懿",
  CharacterCardValue.xiahouDun: "夏侯惇",
  CharacterCardValue.zhangLiao: "张辽",
  CharacterCardValue.xuChu: "许褚",
  CharacterCardValue.guoJia: "郭嘉",
  CharacterCardValue.zhenJi: "甄姬",

  // wu
  CharacterCardValue.sunQuan: "孙权",
  CharacterCardValue.ganNing: "甘宁",
  CharacterCardValue.lvMeng: "吕蒙",
  CharacterCardValue.huangGai: "黄盖",
  CharacterCardValue.zhouYu: "周瑜",
  CharacterCardValue.daQiao: "大乔",
  CharacterCardValue.luXun: "陆逊",
  CharacterCardValue.sunShangXiang: "孙尚香",
};

Map<CharacterCardValue, String> characterClanMap = {
  // qun
  CharacterCardValue.huaTuo: "群",
  CharacterCardValue.lvBu: "群",
  CharacterCardValue.diaoChan: "群",

  // shu
  CharacterCardValue.liuBei: "蜀",
  CharacterCardValue.guanYu: "蜀",
  CharacterCardValue.zhangFei: "蜀",
  CharacterCardValue.zhugeLiang: "蜀",
  CharacterCardValue.zhaoYun: "蜀",
  CharacterCardValue.maChao: "蜀",
  CharacterCardValue.huangYueying: "蜀",

  // wei
  CharacterCardValue.caoCao: "魏",
  CharacterCardValue.simaYi: "魏",
  CharacterCardValue.xiahouDun: "魏",
  CharacterCardValue.zhangLiao: "魏",
  CharacterCardValue.xuChu: "魏",
  CharacterCardValue.guoJia: "魏",
  CharacterCardValue.zhenJi: "魏",

  // wu
  CharacterCardValue.sunQuan: "吴",
  CharacterCardValue.ganNing: "吴",
  CharacterCardValue.lvMeng: "吴",
  CharacterCardValue.huangGai: "吴",
  CharacterCardValue.zhouYu: "吴",
  CharacterCardValue.daQiao: "吴",
  CharacterCardValue.luXun: "吴",
  CharacterCardValue.sunShangXiang: "吴",
};

Map<String, Color> clanColorMap = {
  "群": Colors.grey,
  "蜀": Colors.redAccent,
  "魏": Colors.blueAccent,
  "吴": Colors.greenAccent,
};

Map<RoleCardValue, String> roleDisplayNameMap = {
  RoleCardValue.zhuGong: "主",
  RoleCardValue.zhongChen: "忠",
  RoleCardValue.fanZei: "反",
  RoleCardValue.neiJian: "内",
};

Map<RoleCardValue, Color> roleColorMap = {
  RoleCardValue.zhuGong: Colors.red.shade600,
  RoleCardValue.zhongChen: Colors.orange.shade600,
  RoleCardValue.fanZei: Colors.green,
  RoleCardValue.neiJian: Colors.blue,
};

Map<CharacterCardValue, String> characterImageMap = {
  // qun
  CharacterCardValue.huaTuo: "assets/images/characters/华佗-经典形象.png",
  CharacterCardValue.lvBu: "assets/images/characters/吕布-经典形象.png",
  CharacterCardValue.diaoChan: "assets/images/characters/貂蝉-经典形象.png",

  // shu
  CharacterCardValue.liuBei: "assets/images/characters/刘备-经典形象.png",
  CharacterCardValue.guanYu: "assets/images/characters/关羽-经典形象.png",
  CharacterCardValue.zhangFei: "assets/images/characters/张飞-经典形象.png",
  CharacterCardValue.zhugeLiang: "assets/images/characters/诸葛亮-经典形象.png",
  CharacterCardValue.zhaoYun: "assets/images/characters/赵云-经典形象.png",
  CharacterCardValue.maChao: "assets/images/characters/马超-经典形象.png",
  CharacterCardValue.huangYueying: "assets/images/characters/黄月英-经典形象.png",

  // wei
  CharacterCardValue.caoCao: "assets/images/characters/曹操-经典形象.png",
  CharacterCardValue.simaYi: "assets/images/characters/司马懿-经典形象.png",
  CharacterCardValue.xiahouDun: "assets/images/characters/夏侯惇-经典形象.png",
  CharacterCardValue.zhangLiao: "assets/images/characters/张辽-经典形象.png",
  CharacterCardValue.xuChu: "assets/images/characters/许褚-经典形象.png",
  CharacterCardValue.guoJia: "assets/images/characters/郭嘉-经典形象.png",
  CharacterCardValue.zhenJi: "assets/images/characters/甄姬-经典形象.png",

  // wu
  CharacterCardValue.sunQuan: "assets/images/characters/孙权-经典形象.png",
  CharacterCardValue.ganNing: "assets/images/characters/甘宁-经典形象.png",
  CharacterCardValue.lvMeng: "assets/images/characters/吕蒙-经典形象.png",
  CharacterCardValue.huangGai: "assets/images/characters/黄盖-经典形象.png",
  CharacterCardValue.zhouYu: "assets/images/characters/周瑜-经典形象.png",
  CharacterCardValue.daQiao: "assets/images/characters/大乔-经典形象.png",
  CharacterCardValue.luXun: "assets/images/characters/陆逊-经典形象.png",
  CharacterCardValue.sunShangXiang: "assets/images/characters/孙尚香-经典形象.png",
};

Map<CharacterCardValue, int> characterHealthMap = {
  // qun
  CharacterCardValue.huaTuo: 3,
  CharacterCardValue.lvBu: 4,
  CharacterCardValue.diaoChan: 3,

  // shu
  CharacterCardValue.liuBei: 4,
  CharacterCardValue.guanYu: 4,
  CharacterCardValue.zhangFei: 4,
  CharacterCardValue.zhugeLiang: 3,
  CharacterCardValue.zhaoYun: 4,
  CharacterCardValue.maChao: 4,
  CharacterCardValue.huangYueying: 3,

  // wei
  CharacterCardValue.caoCao: 4,
  CharacterCardValue.simaYi: 3,
  CharacterCardValue.xiahouDun: 4,
  CharacterCardValue.zhangLiao: 4,
  CharacterCardValue.xuChu: 4,
  CharacterCardValue.guoJia: 3,
  CharacterCardValue.zhenJi: 3,

  // wu
  CharacterCardValue.sunQuan: 4,
  CharacterCardValue.ganNing: 4,
  CharacterCardValue.lvMeng: 4,
  CharacterCardValue.huangGai: 4,
  CharacterCardValue.zhouYu: 3,
  CharacterCardValue.daQiao: 3,
  CharacterCardValue.luXun: 3,
  CharacterCardValue.sunShangXiang: 3,
};

Map<CharacterCardValue, int> characterSexMap = {
  // qun
  CharacterCardValue.huaTuo: 1,
  CharacterCardValue.lvBu: 1,
  CharacterCardValue.diaoChan: 0,

  // shu
  CharacterCardValue.liuBei: 1,
  CharacterCardValue.guanYu: 1,
  CharacterCardValue.zhangFei: 1,
  CharacterCardValue.zhugeLiang: 1,
  CharacterCardValue.zhaoYun: 1,
  CharacterCardValue.maChao: 1,
  CharacterCardValue.huangYueying: 0,

  // wei
  CharacterCardValue.caoCao: 1,
  CharacterCardValue.simaYi: 1,
  CharacterCardValue.xiahouDun: 1,
  CharacterCardValue.zhangLiao: 1,
  CharacterCardValue.xuChu: 1,
  CharacterCardValue.guoJia: 1,
  CharacterCardValue.zhenJi: 0,

  // wu
  CharacterCardValue.sunQuan: 1,
  CharacterCardValue.ganNing: 1,
  CharacterCardValue.lvMeng: 1,
  CharacterCardValue.huangGai: 1,
  CharacterCardValue.zhouYu: 1,
  CharacterCardValue.daQiao: 0,
  CharacterCardValue.luXun: 1,
  CharacterCardValue.sunShangXiang: 0,
};

Map<CharacterCardValue, String> characterSkillDescriptionMap = {
  // qun
  CharacterCardValue.huaTuo:
      "【急救】你的回合外，你可以将一张红色牌当【桃】使用。\n\n【青囊】出牌阶段限一次，你可以弃置一张手牌，然后令一名已受伤的角色回复1点体力。",
  CharacterCardValue.lvBu: "锁定技，你的【杀】需要两张【闪】才能抵消；与你【决斗】的角色每次需要打出两张【杀】。",
  CharacterCardValue.diaoChan:
      "【离间】出牌阶段限一次，你可以弃置一张牌，然后令一名男性角色视为对另一名男性角色使用一张【决斗】。\n\n【闭月】结束阶段，你可以摸一张牌。",

  // shu
  CharacterCardValue.liuBei:
      "【仁德】出牌阶段限一次，你可以将任意数量的手牌交给其他角色，若你给出的牌张数达到两张或更多时，你回复1点体力。\n\n【激将】主公技，当你需要使用或打出一张【杀】时，你可以令其他蜀势力角色打出一张【杀】（视为由你使用或打出）。",
  CharacterCardValue.guanYu: "【武圣】你可以将一张红色牌当【杀】使用或打出。",
  CharacterCardValue.zhangFei: "【咆哮】锁定技，你使用【杀】无次数限制。",
  CharacterCardValue.zhugeLiang:
      "【观星】准备阶段，你可以观看牌堆顶的X张牌（X为全场角色数且最多为5），然后以任意顺序分配于牌堆顶或牌堆底。\n\n【空城】锁定技，若你没有手牌，则你不能成为【杀】或【决斗】的目标。",
  CharacterCardValue.zhaoYun: "【龙胆】你可以将【杀】当【闪】、【闪】当【杀】使用或打出。",
  CharacterCardValue.maChao:
      "【马术】	锁定技，你计算与其他角色的距离-1。\n\n【铁骑】你的【杀】指定目标后，你可以进行判定，若结果为红色，该角色不能使用【闪】",
  CharacterCardValue.huangYueying:
      "【集智】当你使用普通锦囊牌时，你可以摸一张牌。\n\n【奇才】锁定技，你使用锦囊牌无距离限制。",

  // wei
  CharacterCardValue.caoCao:
      "【奸雄】当你受到伤害后，你可以获得造成伤害的牌。\n\n【护驾】主公技，你可以令其他魏势力角色选择是否替你使用或打出【闪】。",
  CharacterCardValue.simaYi:
      "【反馈】当你受到伤害后，你可以获得伤害来源的一张牌。\n\n【鬼才】当一名角色的判定牌生效前，你可以打出一张手牌代替之。",
  CharacterCardValue.xiahouDun:
      "【刚烈】当你受到伤害后，你可以进行判定，若结果不为♥，则伤害来源选择一项：\n\n1. 弃置两张手牌；\n\n2. 受到你造成的1点伤害。",
  CharacterCardValue.zhangLiao: "【突袭】摸牌阶段，你可以放弃摸牌，改为获得最多两名其他角色的各一张手牌。",
  CharacterCardValue.xuChu: "【裸衣】摸牌阶段，你可以少摸一张牌，然后本回合你为伤害来源的【杀】或【决斗】造成的伤害+1。",
  CharacterCardValue.guoJia:
      "【天妒】当你的判定牌生效后，你可以获得此牌。\n\n【遗计】当你受到1点伤害后，你可以观看牌堆顶的两张牌，然后交给任意名角色。",
  CharacterCardValue.zhenJi:
      "【倾国】你可以将一张黑色手牌当【闪】使用或打出。\n\n【洛神】准备阶段，你可以进行判定，若结果为黑色，你获得之并可以重复此流程。",

  // wu
  CharacterCardValue.sunQuan:
      "【制衡】出牌阶段限一次，你可以弃置任意张牌，然后摸等量的牌。\n\n【救援】主公技，锁定技，其他吴势力角色对你使用【桃】回复的体力+1。",
  CharacterCardValue.ganNing: "【奇袭】你可以将一张黑色牌当【过河拆桥】使用。",
  CharacterCardValue.lvMeng: "【克己】若你未于出牌阶段内使用或打出过【杀】，则你可以跳过弃牌阶段。",
  CharacterCardValue.huangGai: "【苦肉】出牌阶段，你可以失去1点体力，然后摸两张牌。",
  CharacterCardValue.zhouYu:
      "【英姿】摸牌阶段，你可以多摸一张牌。\n\n【反间】出牌阶段限一次，你可以令一名其他角色猜一种花色，然后获得你的一张手牌并展示之，如果猜错花色，该角色受到1点伤害。",
  CharacterCardValue.daQiao:
      "【国色】你可以将一张♦牌当【乐不思蜀】使用。\n\n【流离】当你成为【杀】的目标时，你可以弃置一张牌并将此【杀】转移给你攻击范围内的一名其他角色（不能是使用此【杀】的角色）。",
  CharacterCardValue.luXun:
      "【谦逊】锁定技，你不能成为【顺手牵羊】和【乐不思蜀】的目标。\n\n【连营】当你失去最后的手牌时，你可以摸一张牌。",
  CharacterCardValue.sunShangXiang:
      "【结姻】出牌阶段限一次，你可以弃置两张手牌并选择一名已受伤的男性角色，然后你与其各回复1点体力。\n\n【枭姬】当你失去装备区里的一张牌时，你可以摸两张牌。",
};
