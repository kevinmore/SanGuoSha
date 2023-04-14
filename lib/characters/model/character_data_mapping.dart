import 'package:flutter/material.dart';

import 'package:san_guo_sha/cards/model/card_value.dart';
import 'character_skill.dart';

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

Map<CharacterCardValue, List<CharacterSkill>> characterSkillMap = {
  // qun
  CharacterCardValue.huaTuo: [CharacterSkill.jiJiu, CharacterSkill.qingNang],
  CharacterCardValue.lvBu: [CharacterSkill.wuShuang],
  CharacterCardValue.diaoChan: [CharacterSkill.liJian, CharacterSkill.Biyue],

  // shu
  CharacterCardValue.liuBei: [CharacterSkill.renDe, CharacterSkill.jiJiang],
  CharacterCardValue.guanYu: [CharacterSkill.wuSheng],
  CharacterCardValue.zhangFei: [CharacterSkill.paoXiao],
  CharacterCardValue.zhugeLiang: [
    CharacterSkill.guanXing,
    CharacterSkill.kongCheng
  ],
  CharacterCardValue.zhaoYun: [CharacterSkill.longDan],
  CharacterCardValue.maChao: [CharacterSkill.maShu, CharacterSkill.tieJi],
  CharacterCardValue.huangYueying: [CharacterSkill.jiZhi, CharacterSkill.qiCai],

  // wei
  CharacterCardValue.caoCao: [CharacterSkill.jianXiong, CharacterSkill.huJia],
  CharacterCardValue.simaYi: [CharacterSkill.fanKui, CharacterSkill.guiCai],
  CharacterCardValue.xiahouDun: [CharacterSkill.gangLie],
  CharacterCardValue.zhangLiao: [CharacterSkill.tuXi],
  CharacterCardValue.xuChu: [CharacterSkill.luoYi],
  CharacterCardValue.guoJia: [CharacterSkill.tianDu, CharacterSkill.yiJi],
  CharacterCardValue.zhenJi: [CharacterSkill.qingGuo, CharacterSkill.luoShen],

  // wu
  CharacterCardValue.sunQuan: [CharacterSkill.zhiHeng, CharacterSkill.jiuYuan],
  CharacterCardValue.ganNing: [CharacterSkill.qiXi],
  CharacterCardValue.lvMeng: [CharacterSkill.keJi],
  CharacterCardValue.huangGai: [CharacterSkill.kuRou],
  CharacterCardValue.zhouYu: [CharacterSkill.yingZi, CharacterSkill.fanJian],
  CharacterCardValue.daQiao: [CharacterSkill.guoSe, CharacterSkill.liuLi],
  CharacterCardValue.luXun: [CharacterSkill.qianXun, CharacterSkill.lianYing],
  CharacterCardValue.sunShangXiang: [
    CharacterSkill.jieYin,
    CharacterSkill.xiaoJi
  ],
};
