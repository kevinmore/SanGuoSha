import 'dart:math';

import 'package:flutter/material.dart';
import 'package:san_guo_sha/cards/model/deck.dart';
import 'package:san_guo_sha/cards/view/card_pile_widget.dart';
import 'package:san_guo_sha/cards/view/flat_card_fan_widget.dart';
import 'package:san_guo_sha/characters/view/player_avatar_widget.dart';

import '../cards/model/playing_card.dart';
import '../cards/model/card_value.dart';
import '../cards/util/card_measurements.dart';

class GameTablePage extends StatelessWidget {
  const GameTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double cardHeight = screenHeight / 4;

    List<PlayingCard> handCards = [
      DeckCard(value: DeckCardValue.ace, suit: Suit.clubs, deck: 0),
      DeckCard(value: DeckCardValue.king, suit: Suit.spades, deck: 0),
      DeckCard(value: DeckCardValue.five, suit: Suit.hearts, deck: 1),
      DeckCard(value: DeckCardValue.ace, suit: Suit.clubs, deck: 1),
      DeckCard(value: DeckCardValue.ace, suit: Suit.spades, deck: 1),
      DeckCard(value: DeckCardValue.two, suit: Suit.clubs, deck: 0),
    ];

    int numOpponents = 7;
    double opponentWidgetWidth = screenWidth / (numOpponents + 2);
    double opponentWidgetHeight = min(opponentWidgetWidth / kCardAspectRatio, cardHeight);

    List<Widget> opponents = [
      PlayerAvatarWidget(
        height: opponentWidgetHeight,
        role: RoleCardValue.zhongChen,
        character: CharacterCardValue.diaoChan,
        health: 1,
        handCards: 5,
      ),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.zhongChen,
          character: CharacterCardValue.guanYu,
          showRole: true,
          handCards: 2,
          health: 2),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.zhongChen,
          character: CharacterCardValue.zhangFei,
          isActive: true,
          handCards: 1,
          health: 4),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.guoJia,
          handCards: 0,
          health: 2),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.huangGai,
          showRole: true,
          handCards: 1,
          health: 0),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.huaTuo,
          handCards: 4,
          health: 3),
      PlayerAvatarWidget(
          height: opponentWidgetHeight,
          role: RoleCardValue.neiJian,
          character: CharacterCardValue.zhenJi,
          showRole: true,
          handCards: 2,
          health: 3),
    ];

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgrounds/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8, right: 16, left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // opponents
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: opponents,
                ),

                //deck cards
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       CardPileWidget(
                //         cards: deckACardsList(),
                //         cardHeight: cardHeight,
                //         cardOverlapping: screenHeight * 0.0003,
                //         isFacingDown: true,
                //         // debugMode: true,
                //       ),
                //       CardPileWidget(
                //         cards: deckBCardsList(),
                //         cardHeight: cardHeight,
                //         cardOverlapping: screenHeight * 0.0003,
                //         // debugMode: true,
                //       ),
                //     ],
                //   ),
                // ),

                // player
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PlayerAvatarWidget(
                        height: cardHeight,
                        role: RoleCardValue.zhuGong,
                        character: CharacterCardValue.liuBei,
                        handCards: 6,
                        showRole: true,
                        isActive: true,
                        isMe: true,
                        health: 5),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: FlatCardFanWidget(
                          cards: handCards,
                          cardHeight: cardHeight,
                        )),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
