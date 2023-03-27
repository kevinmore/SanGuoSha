import '../model/card_value.dart';

Map<RoleCardValue, String> roleCardImageMap = {
  RoleCardValue.fanZei: "assets/card_images/roles/反贼.png",
  RoleCardValue.neiJian: "assets/card_images/roles/内奸.png",
  RoleCardValue.zhongChen: "assets/card_images/roles/忠臣.png",
  RoleCardValue.zhuGong: "assets/card_images/roles/主公.png",
};

Map<CharacterCardValue, String> characterCardImageMap = {
  // qun
  CharacterCardValue.huaTuo: "assets/card_images/characters/qun/QUN_001_华佗.png",
  CharacterCardValue.lvBu: "assets/card_images/characters/qun/QUN_002_吕布.png",
  CharacterCardValue.diaoChan:
      "assets/card_images/characters/qun/QUN_003_貂蝉.png",

  // shu
  CharacterCardValue.liuBei: "assets/card_images/characters/shu/SHU_001_刘备.png",
  CharacterCardValue.guanYu: "assets/card_images/characters/shu/SHU_002_关羽.png",
  CharacterCardValue.zhangFei:
      "assets/card_images/characters/shu/SHU_003_张飞.png",
  CharacterCardValue.zhugeLiang:
      "assets/card_images/characters/shu/SHU_004_诸葛亮.png",
  CharacterCardValue.zhaoYun:
      "assets/card_images/characters/shu/SHU_005_赵云.png",
  CharacterCardValue.maChao: "assets/card_images/characters/shu/SHU_006_马超.png",
  CharacterCardValue.huangYueying:
      "assets/card_images/characters/shu/SHU_007_黄月英.png",

  // wei
  CharacterCardValue.caoCao: "assets/card_images/characters/wei/WEI_001_曹操.png",
  CharacterCardValue.simaYi:
      "assets/card_images/characters/wei/WEI_002_司马懿.png",
  CharacterCardValue.xiahouDun:
      "assets/card_images/characters/wei/WEI_003_夏侯惇.png",
  CharacterCardValue.zhangLiao:
      "assets/card_images/characters/wei/WEI_004_张辽.png",
  CharacterCardValue.xuChu: "assets/card_images/characters/wei/WEI_005_许诸.png",
  CharacterCardValue.guoJia: "assets/card_images/characters/wei/WEI_006_郭嘉.png",
  CharacterCardValue.zhenJi: "assets/card_images/characters/wei/WEI_007_甄姬.png",

  // wu
  CharacterCardValue.sunQuan: "assets/card_images/characters/wu/WU_001_孙权.png",
  CharacterCardValue.ganNing: "assets/card_images/characters/wu/WU_002_甘宁.png",
  CharacterCardValue.lvMeng: "assets/card_images/characters/wu/WU_003_吕蒙.png",
  CharacterCardValue.huangGai: "assets/card_images/characters/wu/WU_004_黄盖.png",
  CharacterCardValue.zhouYu: "assets/card_images/characters/wu/WU_005_周瑜.png",
  CharacterCardValue.daQiao: "assets/card_images/characters/wu/WU_006_大乔.png",
  CharacterCardValue.luXun: "assets/card_images/characters/wu/WU_007_陆逊.png",
  CharacterCardValue.sunShangXiang:
      "assets/card_images/characters/wu/WU_008_孙尚香.png",
};

Map<Suit, Map<DeckCardValue, String>> deckACardImageMap = {
  Suit.spades: {
    DeckCardValue.ace: "assets/card_images/deck/闪电.png",
    DeckCardValue.two: "assets/card_images/deck/八卦阵.png",
    DeckCardValue.three: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.four: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.five: "assets/card_images/deck/青龙偃月刀.png",
    DeckCardValue.six: "assets/card_images/deck/乐不思蜀.png",
    DeckCardValue.seven: "assets/card_images/deck/南蛮入侵.png",
    DeckCardValue.eight: "assets/card_images/deck/杀.png",
    DeckCardValue.nine: "assets/card_images/deck/杀.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/无懈可击.png",
    DeckCardValue.queen: "assets/card_images/deck/丈八蛇矛.png",
    DeckCardValue.king: "assets/card_images/deck/大宛.png",
  },
  Suit.hearts: {
    DeckCardValue.ace: "assets/card_images/deck/桃园结义.png",
    DeckCardValue.two: "assets/card_images/deck/闪.png",
    DeckCardValue.three: "assets/card_images/deck/桃.png",
    DeckCardValue.four: "assets/card_images/deck/桃.png",
    DeckCardValue.five: "assets/card_images/deck/麒麟弓.png",
    DeckCardValue.six: "assets/card_images/deck/桃.png",
    DeckCardValue.seven: "assets/card_images/deck/桃.png",
    DeckCardValue.eight: "assets/card_images/deck/桃.png",
    DeckCardValue.nine: "assets/card_images/deck/桃.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/杀.png",
    DeckCardValue.queen: "assets/card_images/deck/桃.png",
    DeckCardValue.king: "assets/card_images/deck/爪黄飞电.png",
  },
  Suit.clubs: {
    DeckCardValue.ace: "assets/card_images/deck/诸葛连弩.png",
    DeckCardValue.two: "assets/card_images/deck/八卦阵.png",
    DeckCardValue.three: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.four: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.five: "assets/card_images/deck/的卢.png",
    DeckCardValue.six: "assets/card_images/deck/乐不思蜀.png",
    DeckCardValue.seven: "assets/card_images/deck/南蛮入侵.png",
    DeckCardValue.eight: "assets/card_images/deck/杀.png",
    DeckCardValue.nine: "assets/card_images/deck/杀.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/杀.png",
    DeckCardValue.queen: "assets/card_images/deck/借刀杀人.png",
    DeckCardValue.king: "assets/card_images/deck/借刀杀人.png",
  },
  Suit.diamonds: {
    DeckCardValue.ace: "assets/card_images/deck/诸葛连弩.png",
    DeckCardValue.two: "assets/card_images/deck/闪.png",
    DeckCardValue.three: "assets/card_images/deck/闪.png",
    DeckCardValue.four: "assets/card_images/deck/闪.png",
    DeckCardValue.five: "assets/card_images/deck/闪.png",
    DeckCardValue.six: "assets/card_images/deck/闪.png",
    DeckCardValue.seven: "assets/card_images/deck/闪.png",
    DeckCardValue.eight: "assets/card_images/deck/闪.png",
    DeckCardValue.nine: "assets/card_images/deck/闪.png",
    DeckCardValue.ten: "assets/card_images/deck/闪.png",
    DeckCardValue.jack: "assets/card_images/deck/闪.png",
    DeckCardValue.queen: "assets/card_images/deck/桃.png",
    DeckCardValue.king: "assets/card_images/deck/杀.png",
  },
};

Map<Suit, Map<DeckCardValue, String>> deckBCardImageMap = {
  Suit.spades: {
    DeckCardValue.ace: "assets/card_images/deck/决斗.png",
    DeckCardValue.two: "assets/card_images/deck/雌雄双股剑.png",
    DeckCardValue.three: "assets/card_images/deck/顺手牵羊.png",
    DeckCardValue.four: "assets/card_images/deck/顺手牵羊.png",
    DeckCardValue.five: "assets/card_images/deck/绝影.png",
    DeckCardValue.six: "assets/card_images/deck/青釭剑.png",
    DeckCardValue.seven: "assets/card_images/deck/杀.png",
    DeckCardValue.eight: "assets/card_images/deck/杀.png",
    DeckCardValue.nine: "assets/card_images/deck/杀.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/顺手牵羊.png",
    DeckCardValue.queen: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.king: "assets/card_images/deck/南蛮入侵.png",
  },
  Suit.hearts: {
    DeckCardValue.ace: "assets/card_images/deck/万箭齐发.png",
    DeckCardValue.two: "assets/card_images/deck/闪.png",
    DeckCardValue.three: "assets/card_images/deck/五谷丰登.png",
    DeckCardValue.four: "assets/card_images/deck/五谷丰登.png",
    DeckCardValue.five: "assets/card_images/deck/赤兔.png",
    DeckCardValue.six: "assets/card_images/deck/乐不思蜀.png",
    DeckCardValue.seven: "assets/card_images/deck/无中生有.png",
    DeckCardValue.eight: "assets/card_images/deck/无中生有.png",
    DeckCardValue.nine: "assets/card_images/deck/无中生有.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/无中生有.png",
    DeckCardValue.queen: "assets/card_images/deck/过河拆桥.png",
    DeckCardValue.king: "assets/card_images/deck/闪.png",
  },
  Suit.clubs: {
    DeckCardValue.ace: "assets/card_images/deck/决斗.png",
    DeckCardValue.two: "assets/card_images/deck/杀.png",
    DeckCardValue.three: "assets/card_images/deck/杀.png",
    DeckCardValue.four: "assets/card_images/deck/杀.png",
    DeckCardValue.five: "assets/card_images/deck/杀.png",
    DeckCardValue.six: "assets/card_images/deck/杀.png",
    DeckCardValue.seven: "assets/card_images/deck/杀.png",
    DeckCardValue.eight: "assets/card_images/deck/杀.png",
    DeckCardValue.nine: "assets/card_images/deck/杀.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/杀.png",
    DeckCardValue.queen: "assets/card_images/deck/无懈可击.png",
    DeckCardValue.king: "assets/card_images/deck/无懈可击.png",
  },
  Suit.diamonds: {
    DeckCardValue.ace: "assets/card_images/deck/决斗.png",
    DeckCardValue.two: "assets/card_images/deck/闪.png",
    DeckCardValue.three: "assets/card_images/deck/顺手牵羊.png",
    DeckCardValue.four: "assets/card_images/deck/顺手牵羊.png",
    DeckCardValue.five: "assets/card_images/deck/贯石斧.png",
    DeckCardValue.six: "assets/card_images/deck/杀.png",
    DeckCardValue.seven: "assets/card_images/deck/杀.png",
    DeckCardValue.eight: "assets/card_images/deck/杀.png",
    DeckCardValue.nine: "assets/card_images/deck/杀.png",
    DeckCardValue.ten: "assets/card_images/deck/杀.png",
    DeckCardValue.jack: "assets/card_images/deck/闪.png",
    DeckCardValue.queen: "assets/card_images/deck/方天画戟.png",
    DeckCardValue.king: "assets/card_images/deck/紫骍.png",
  },
};
