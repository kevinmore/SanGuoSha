import 'package:flutter/material.dart';
import '../model/playing_card.dart';
import '../util/card_aspect_ratio.dart';
import 'card_images_map.dart';

class PlayingCardWidget extends StatefulWidget {
  final PlayingCard card;
  final bool showBack;

  const PlayingCardWidget({
    Key? key,
    required this.card,
    this.showBack = false,
  }) : super(key: key);

  @override
  State<PlayingCardWidget> createState() => _PlayingCardWidgetState();
}

class _PlayingCardWidgetState extends State<PlayingCardWidget> {
  bool _isHovered = false;

  Widget createDeckCardBody() {
    final deckCard = widget.card as DeckCard;
    final cardImageFileName = widget.showBack
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
      child: MouseRegion(
        onEnter: (event) => setState(() {
          _isHovered = true;
        }),
        onExit: (event) => setState(() {
          _isHovered = false;
        }),
        child: Card(
          elevation: _isHovered ? 8.0 : 2.0,
          shape: RoundedRectangleBorder(
            side: _isHovered
                ? const BorderSide(color: Colors.blue, width: 3)
                : const BorderSide(),
            borderRadius: BorderRadius.circular(8.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: createDeckCardBody(),
        ),
      ),
    );
  }
}
