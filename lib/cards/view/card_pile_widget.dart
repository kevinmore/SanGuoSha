import 'package:flutter/material.dart';

import '../model/playing_card.dart';
import '../util/card_aspect_ratio.dart';
import 'playing_card_widget.dart';

class CardPileWidget extends StatelessWidget {
  const CardPileWidget({
    Key? key,
    required this.cards,
    this.isFacingDown = false,
    this.height = 420,
    this.width,
    this.debugMode = false
  }) : super(key: key);

  final List<PlayingCard> cards;
  final bool isFacingDown;
  final double? width;
  final double height;
  final bool debugMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: debugMode ? BoxDecoration(
          border: Border.all(color: Colors.blueAccent)
      ) : null,
      height: height,
      width: width ?? height * playingCardAspectRatio,
      child: Stack(
        children: List.generate(cards.length, (index) {
          double k =  index / (cards.length - 1);
          return Align(
            alignment: FractionalOffset(k, 1.0 - k),
            child: PlayingCardWidget(
              card: cards[index],
              isFacingDown: isFacingDown,
            ),
          );
        }),
      ),
    );
  }
}
