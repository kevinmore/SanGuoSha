import 'package:flutter/material.dart';

import '../util/card_measurements.dart';
import '../model/playing_card.dart';
import 'playing_card_widget.dart';

class FlatCardFanWidget extends StatefulWidget {
  const FlatCardFanWidget({
    Key? key,
    required this.cards,
    this.isSelectable = true,
    this.cardHeight = kDefaultCardHeight,
  }) : super(key: key);

  final List<PlayingCard> cards;
  final bool isSelectable;
  final double cardHeight;

  @override
  State<FlatCardFanWidget> createState() => _FlatCardFanWidgetState();
}

class _FlatCardFanWidgetState extends State<FlatCardFanWidget> {
  PlayingCard? _selectedCard;

  void _onSelectCard(PlayingCard card) {
    setState(() {
      _selectedCard = card;
    });
  }

  void _onUnselectCard(PlayingCard card) {
    setState(() {
      _selectedCard = null;
    });
  }

  PlayingCardWidget _createCardWidget(PlayingCard card) {
    return PlayingCardWidget(
      card: card,
      height: widget.cardHeight,
      isSelectable: widget.isSelectable,
      onMouseEnter: _onSelectCard,
      onMouseExit: _onUnselectCard,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.cards.isEmpty) {
      return const SizedBox.shrink();
    }

    if (widget.cards.length == 1) {
      return PlayingCardWidget(
        card: widget.cards[0],
        isSelectable: widget.isSelectable,
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.hasBoundedWidth
            ? constraints.maxWidth
            : MediaQuery.of(context).size.width;

        var selectedIndex = _selectedCard == null
            ? widget.cards.length - 1
            : widget.cards.indexOf(_selectedCard!);
        List<Widget> cardWidgetsList = [];

        const animationDuration = Duration(milliseconds: 150);
        double cardWidth = widget.cardHeight * kCardAspectRatio;
        bool isOverlapping = cardWidth * widget.cards.length > maxWidth;

        // if there won't be any overlapping, we do nothing
        if (!isOverlapping) {
          return Row(
            children: List.generate(
              widget.cards.length,
              (index) => _createCardWidget(widget.cards[index]),
            ),
          );
        }

        // if there is overlapping, we separate the cards into 2 parts, divided by the current selected card
        // left part
        for (int i = 0; i <= selectedIndex; ++i) {
          var cardWidget = _createCardWidget(widget.cards[i]);
          cardWidgetsList.add(AnimatedAlign(
            duration: animationDuration,
            alignment: FractionalOffset((i / (widget.cards.length - 1)), 0.5),
            child: cardWidget,
          ));
        }

        // calculate the overlapping space of any 2 cards
        double overlappingSpace = (cardWidth * widget.cards.length - maxWidth) /
            (widget.cards.length - 1);
        double offset = overlappingSpace / (maxWidth - cardWidth);

        // right part
        for (int i = selectedIndex + 1; i < widget.cards.length; ++i) {
          var cardWidget = _createCardWidget(widget.cards[i]);
          cardWidgetsList.add(AnimatedAlign(
            duration: animationDuration,
            alignment:
                FractionalOffset((i / (widget.cards.length - 1)) + offset, 0.5),
            child: cardWidget,
          ));
        }

        return Stack(
          children: cardWidgetsList,
        );
      },
    );
  }
}
