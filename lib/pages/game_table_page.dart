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

    List<Widget> opponents = [
      PlayerAvatarWidget(
        role: RoleCardValue.zhongChen,
        character: CharacterCardValue.diaoChan,
        health: 3,
        handCards: 5,
      ),
      PlayerAvatarWidget(
          role: RoleCardValue.zhongChen,
          character: CharacterCardValue.guanYu,
          showRole: true,
          handCards: 2,
          health: 3),
      PlayerAvatarWidget(
          role: RoleCardValue.zhongChen,
          character: CharacterCardValue.zhangFei,
          handCards: 1,
          health: 3),
      PlayerAvatarWidget(
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.guoJia,
          handCards: 0,
          health: 3),
      PlayerAvatarWidget(
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.huangGai,
          showRole: true,
          handCards: 1,
          health: 3),
      PlayerAvatarWidget(
          role: RoleCardValue.fanZei,
          character: CharacterCardValue.huaTuo,
          handCards: 4,
          health: 3),
      PlayerAvatarWidget(
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
              image: AssetImage("assets/images/backgrounds/魏.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // opponents
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: opponents,
                  ),
                ),

                //deck cards
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardPileWidget(
                        cards: deckACardsList(),
                        cardHeight: cardHeight,
                        cardOverlapping: screenHeight * 0.0003,
                        isFacingDown: true,
                        // debugMode: true,
                      ),
                      CardPileWidget(
                        cards: deckBCardsList(),
                        cardHeight: cardHeight,
                        cardOverlapping: screenHeight * 0.0003,
                        // debugMode: true,
                      ),
                    ],
                  ),
                ),

                // player
                Row(
                  children: [
                    PlayerAvatarWidget(
                        role: RoleCardValue.zhuGong,
                        character: CharacterCardValue.liuBei,
                        handCards: 6,
                        showRole: true,
                        health: 4),
                    // SizedBox(
                    //     width: MediaQuery.of(context).size.width - cardHeight * kCardAspectRatio * 1.2,
                    //     child: FlatCardFanWidget(cards: handCards, cardHeight: cardHeight,)),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
