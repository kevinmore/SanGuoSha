import 'package:flutter/material.dart';
import 'package:san_guo_sha/cards/model/card_value.dart';
import 'package:san_guo_sha/cards/util/get_good_font_size.dart';
import '../model/playing_card.dart';
import '../util/card_aspect_ratio.dart';
import 'card_images_mapping.dart';
import 'card_texts_mapping.dart';

class PlayingCardContent extends StatelessWidget {
  final PlayingCard card;
  final bool isFacingDown;
  final double height;

  const PlayingCardContent({
    Key? key,
    required this.card,
    required this.isFacingDown,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isFacingDown) {
      return Image.asset(
        "assets/card_images/deck/card_back.png",
        fit: BoxFit.fill,
      );
    }

    switch (card.type) {
      case CardType.role:
        final roleCard = card as RoleCard;
        return Image.asset(
          roleCardImageMap[roleCard.value]!,
          fit: BoxFit.fill,
        );
      case CardType.character:
        final charCard = card as CharacterCard;
        return Image.asset(
          characterCardImageMap[charCard.value]!,
          fit: BoxFit.fill,
        );
      case CardType.deck:
        final deckCard = card as DeckCard;
        return LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.hasBoundedWidth
                ? constraints.maxWidth
                : constraints.maxHeight * playingCardAspectRatio;
            double height = constraints.hasBoundedHeight
                ? constraints.maxHeight
                : constraints.maxWidth / playingCardAspectRatio;

            // these magic numbers are based on measurements
            // taken from a few decks of standard decks of cards.
            double innerWidth = width * 1.6875 / 2.5;
            double innerHeight = height * 2.8125 / 3.5;
            double sideSpace = (width - innerWidth) / 2.0;
            double suitHeight = height * 0.12;
            double labelSuitHeight = suitHeight / 2.0;
            double sideOffset = width * 0.03;
            double topOffset = height * 0.05;

            Widget label = Text(
              deckCardValueTextMap[deckCard.value]!,
              style: TextStyle(
                  color: suitColorMap[deckCard.suit],
                  fontSize: getGoodFontSize(
                      "I0",
                      Theme.of(context).textTheme.labelLarge!,
                      sideSpace * .45)),
              maxLines: 1,
              softWrap: false,
              textAlign: TextAlign.center,
            );

            Widget suit = Text(
              suitSymbolMap[deckCard.suit]!,
              style: TextStyle(
                  color: suitColorMap[deckCard.suit],
                  fontSize: getGoodFontSize("♠",
                      Theme.of(context).textTheme.labelLarge!, sideSpace * .5)),
              maxLines: 1,
              softWrap: false,
              textAlign: TextAlign.center,
            );

            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    deckCardImageMapList[deckCard.deck]
                        [deckCard.suit]![deckCard.value]!,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: sideOffset,
                    top: topOffset,
                    child: SizedBox(
                      width: sideSpace,
                      child: label,
                    ),
                  ),
                  Positioned(
                    left: sideOffset,
                    top: topOffset + labelSuitHeight,
                    child: SizedBox(
                      width: sideSpace,
                      child: suit,
                    ),
                  )
                ],
              ),
            );
          },
        );
    }
  }
}
