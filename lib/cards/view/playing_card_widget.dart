import 'package:flutter/material.dart';
import 'package:san_guo_sha/cards/model/card_value.dart';
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
    late String imageFileName;
    const backImageFileName = "assets/card_images/deck/card_back.png";
    switch (widget.card.type) {
      case CardType.role:
        final roleCard = widget.card as RoleCard;
        imageFileName = roleCardImageMap[roleCard.value]!;
        break;
      case CardType.character:
        final charCard = widget.card as CharacterCard;
        imageFileName = characterCardImageMap[charCard.value]!;
        break;
      case CardType.deck:
        final deckCard = widget.card as DeckCard;
        imageFileName = deckCardImageMapList[deckCard.deck]
            [deckCard.suit]![deckCard.value]!;
        break;
    }

    return Image.asset(
      widget.showBack ? backImageFileName : imageFileName,
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: playingCardAspectRatio,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
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
