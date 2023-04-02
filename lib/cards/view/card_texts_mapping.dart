import 'package:flutter/material.dart';

import '../model/card_value.dart';

Map<Suit, String> suitSymbolMap = {
  Suit.spades: "♠",
  Suit.hearts: "♥",
  Suit.clubs: "♣",
  Suit.diamonds: "♦",
};

Map<Suit, Color> suitColorMap = {
  Suit.clubs: Colors.black,
  Suit.spades: Colors.black,
  Suit.hearts: Colors.red.shade900,
  Suit.diamonds:Colors.red.shade900,
};

Map<DeckCardValue, String> deckCardValueTextMap = {
  DeckCardValue.ace: "A",
  DeckCardValue.two: "2",
  DeckCardValue.three: "3",
  DeckCardValue.four: "4",
  DeckCardValue.five: "5",
  DeckCardValue.six: "6",
  DeckCardValue.seven: "7",
  DeckCardValue.eight: "8",
  DeckCardValue.nine: "9",
  DeckCardValue.ten: "10",
  DeckCardValue.jack: "J",
  DeckCardValue.queen: "Q",
  DeckCardValue.king: "K",
};
