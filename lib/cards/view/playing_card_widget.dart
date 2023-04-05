import 'package:flutter/material.dart';
import '../model/playing_card.dart';
import '../util/card_measurements.dart';
import 'playing_card_content.dart';

class PlayingCardWidget extends StatefulWidget {
  final PlayingCard card;
  final bool isFacingDown;
  final bool isSelectable;
  final double height;
  final double? elevation;

  final Function(PlayingCard)? onMouseEnter;
  final Function(PlayingCard)? onMouseExit;

  const PlayingCardWidget({
    Key? key,
    required this.card,
    this.isFacingDown = false,
    this.isSelectable = false,
    this.height = kDefaultCardHeight,
    this.elevation,
    this.onMouseEnter,
    this.onMouseExit,
  }) : super(key: key);

  double get cardHeight => height;
  double get cardWidth => height * kCardAspectRatio;

  @override
  State<PlayingCardWidget> createState() => _PlayingCardWidgetState();
}

class _PlayingCardWidgetState extends State<PlayingCardWidget> {
  bool _isHovered = false;
  late final PlayingCardContent _cardContent;

  @override
  void initState() {
    _cardContent = PlayingCardContent(
      card: widget.card,
      height: widget.height,
      isFacingDown: widget.isFacingDown,
    );

    super.initState();
  }

  Widget createCard() {
    return Card(
      // elevation: _isHovered ? 16.0 : widget.elevation,
      shape: RoundedRectangleBorder(
        side: _isHovered
            ? const BorderSide(color: Colors.blue, width: 3)
            : const BorderSide(),
        // 8.0 radius is good for the default height
        borderRadius: BorderRadius.circular(8.0 / kDefaultCardHeight * widget.height),
      ),
      clipBehavior: Clip.antiAlias,
      child: _cardContent,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cardWidget = createCard();
    return SizedBox(
      height: widget.height,
      width: widget.height * kCardAspectRatio,
      child: widget.isSelectable
          ? MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                setState(() {
                  _isHovered = true;
                });
                widget.onMouseEnter?.call(widget.card);
              },
              onExit: (event) {
                setState(() {
                  _isHovered = false;
                });
                widget.onMouseExit?.call(widget.card);
              },
              child: cardWidget,
            )
          : cardWidget,
    );
  }
}
