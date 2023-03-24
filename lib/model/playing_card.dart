import 'card_value.dart';

class PlayingCard {
  late final CardType type;
  late final String name;
  late final String imageUrl;

  // Constructor
  PlayingCard({required this.type, required this.name, required this.imageUrl});

  // Convert Card object to Map object
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Convert Map object to Card object
  factory PlayingCard.fromMap(Map<String, dynamic> map) {
    final CardType cardType = CardType.values[map['type']];
    switch (cardType) {
      case CardType.role:
        return RoleCard.fromMap(map);
      case CardType.character:
        return CharacterCard.fromMap(map);
      case CardType.deck:
        return DeckCard.fromMap(map);
    }
  }
}

class RoleCard extends PlayingCard {
  final RoleCardValue value;

  // Constructor
  RoleCard(
      {required this.value, required String name, required String imageUrl})
      : super(type: CardType.role, name: name, imageUrl: imageUrl);

  // Convert RoleCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Convert Map object to RoleCard object
  factory RoleCard.fromMap(Map<String, dynamic> map) {
    return RoleCard(
      value: RoleCardValue.values[map['value']],
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }
}

class CharacterCard extends PlayingCard {
  CharacterCardValue value;

  // Constructor
  CharacterCard(
      {required this.value, required String name, required String imageUrl})
      : super(type: CardType.character, name: name, imageUrl: imageUrl);

  // Convert CharacterCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Convert Map object to CharacterCard object
  factory CharacterCard.fromMap(Map<String, dynamic> map) {
    return CharacterCard(
      value: CharacterCardValue.values[map['value']],
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }
}

class DeckCard extends PlayingCard {
  DeckCardValue value;
  Suit suit;

  // Constructor
  DeckCard(
      {required this.value,
      required this.suit,
      required String name,
      required String imageUrl})
      : super(type: CardType.deck, name: name, imageUrl: imageUrl);

  // Convert DeckCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'suit': suit.index,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Convert Map object to DeckCard object
  factory DeckCard.fromMap(Map<String, dynamic> map) {
    return DeckCard(
      value: DeckCardValue.values[map['value']],
      suit: Suit.values[map['suit']],
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }
}
