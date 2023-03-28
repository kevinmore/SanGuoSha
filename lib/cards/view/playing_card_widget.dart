import 'package:flutter/material.dart';
import '../model/playing_card.dart';
import '../util/card_aspect_ratio.dart';
import 'card_images_map.dart';

class PlayingCardWidget extends StatelessWidget {
  final PlayingCard card;
  final bool showBack;

  /// These fields are passed to the underlying material card.
  final ShapeBorder? shape;
  final double? elevation;

  const PlayingCardWidget({
    Key? key,
    required this.card,
    this.showBack = false,
    this.shape,
    this.elevation,
  }) : super(key: key);

  Widget createDeckCardBody() {
    final deckCard = card as DeckCard;
    final cardImageFileName = showBack
        ? "assets/card_images/deck/card_back.png"
        : deckCardImageMapList[deckCard.deck][deckCard.suit]![deckCard.value];
    return Image.asset(
      cardImageFileName!,
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: playingCardAspectRatio,
      child: Card(
        shape: shape ?? RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.5),
        ),
        elevation: elevation,
        clipBehavior: Clip.antiAlias,
        child: createDeckCardBody(),
      ),
    );
  }
}
