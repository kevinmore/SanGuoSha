import 'package:flutter/material.dart';

import '../model/playing_card.dart';
import '../util/card_measurements.dart';
import 'playing_card_widget.dart';

class CardPileWidget extends StatelessWidget {
  const CardPileWidget({
    Key? key,
    required this.cards,
    this.isFacingDown = false,
    this.cardHeight = kDefaultCardPileHeight,
    this.cardOverlapping = kDefaultCardPileOverlapping,
    this.debugMode = false
  }) : super(key: key);

  final List<PlayingCard> cards;
  final bool isFacingDown;
  final double cardHeight;
  final double cardOverlapping;
  final bool debugMode;

  @override
  Widget build(BuildContext context) {
    double containerHeight = cardHeight + cards.length * cardOverlapping;
    double containerWidth = containerHeight * kCardAspectRatio;
    return Container(
      decoration: debugMode ? BoxDecoration(
          border: Border.all(color: Colors.blueAccent)
      ) : null,
      height: containerHeight,
      width:  containerWidth,
      child: Stack(
        clipBehavior: Clip.none,
        children: List.generate(cards.length, (index) {
          double k =  index / (cards.length - 1);
          return Align(
            alignment: FractionalOffset(k, 1.0 - k),
            child: PlayingCardWidget(
              card: cards[index],
              height: cardHeight,
              isFacingDown: isFacingDown,
            ),
          );
        }),
      ),
    );
  }
}
