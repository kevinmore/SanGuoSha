import 'card_value.dart';
import 'playing_card.dart';

List<RoleCard> roleCardsList() =>
    RoleCardValue.values.map((v) => RoleCard(value: v)).toList();

List<CharacterCard> characterCardsList() =>
    CharacterCardValue.values.map((v) => CharacterCard(value: v)).toList();

List<DeckCard> deckACardsList() => Suit.values
    .expand((s) =>
        DeckCardValue.values.map((v) => DeckCard(value: v, suit: s, deck: 0)))
    .toList();

List<DeckCard> deckBCardsList() => Suit.values
    .expand((s) =>
    DeckCardValue.values.map((v) => DeckCard(value: v, suit: s, deck: 1)))
    .toList();

List<DeckCard> deckCardsList() => deckACardsList() + deckBCardsList();
