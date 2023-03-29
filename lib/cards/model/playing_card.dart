import 'card_value.dart';

class PlayingCard {
  late final CardType type;
  final String? name;
  final String? description;

  // Constructor
  PlayingCard({
    required this.type,
    this.name,
    this.description,
  });

  // Convert Card object to Map object
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'name': name,
      'description': description,
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
  RoleCard({
    required this.value,
    String? name,
    String? description,
  }) : super(
          type: CardType.role,
          name: name,
          description: description,
        );

  // Convert RoleCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'name': name,
      'description': description,
    };
  }

  // Convert Map object to RoleCard object
  factory RoleCard.fromMap(Map<String, dynamic> map) {
    return RoleCard(
      value: RoleCardValue.values[map['value']],
      name: map['name'],
      description: map['description'],
    );
  }
}

class CharacterCard extends PlayingCard {
  CharacterCardValue value;

  // Constructor
  CharacterCard({
    required this.value,
    String? name,
    String? description,
  }) : super(
          type: CardType.character,
          name: name,
          description: description,
        );

  // Convert CharacterCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'name': name,
      'description': description,
    };
  }

  // Convert Map object to CharacterCard object
  factory CharacterCard.fromMap(Map<String, dynamic> map) {
    return CharacterCard(
      value: CharacterCardValue.values[map['value']],
      name: map['name'],
      description: map['description'],
    );
  }
}

class DeckCard extends PlayingCard {
  DeckCardValue value;
  Suit suit;
  int deck; // 0, 1, 2...

  // Constructor
  DeckCard({
    required this.value,
    required this.suit,
    required this.deck,
    String? name,
    String? description,
  }) : super(
          type: CardType.deck,
          name: name,
          description: description,
        );

  // Convert DeckCard object to Map object
  @override
  Map<String, dynamic> toMap() {
    return {
      'type': type.index,
      'value': value.index,
      'suit': suit.index,
      'deck': deck,
      'name': name,
      'description': description,
    };
  }

  // Convert Map object to DeckCard object
  factory DeckCard.fromMap(Map<String, dynamic> map) {
    return DeckCard(
      value: DeckCardValue.values[map['value']],
      suit: Suit.values[map['suit']],
      deck: map['deck'],
      name: map['name'],
      description: map['description'],
    );
  }
}
