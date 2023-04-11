import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:san_guo_sha/cards/model/card_value.dart';
import 'package:san_guo_sha/cards/util/card_measurements.dart';
import 'package:san_guo_sha/characters/model/character_data_mapping.dart';
import 'package:san_guo_sha/characters/util/character_measurements.dart';
import 'glow_card.dart';

class PlayerAvatarWidget extends StatelessWidget {
  const PlayerAvatarWidget({
    Key? key,
    required this.role,
    required this.character,
    required this.health,
    required this.handCards,
    this.height = kDefaultCardHeight,
    this.showRole = false,
  }) : super(key: key);

  final RoleCardValue role;
  final CharacterCardValue character;
  final int health;
  final int handCards;
  final double height;
  final bool showRole;

  Widget _buildBackgroundWidget(BuildContext context) {
    // the following measurements are based on kDefaultCardHeight = 360
    // double scale = height / kDefaultCardHeight;

    return Stack(
      children: [
        // background
        SizedBox(
          height: height,
          width: height * kCharacterImageAspectRatio +
              32 * height / kDefaultCardHeight,
          child: GlowCard(
              glowColor: Colors.green,
              cardColor: Colors.grey.shade800,
              isGlowing: true),
        ),

        // clan
        Positioned(
          top: 10 * height / kDefaultCardHeight,
          left: 10 * height / kDefaultCardHeight,
          child: Text(
            characterClanMap[character]!,
            style: TextStyle(
              fontSize: 32 * height / kDefaultCardHeight,
              fontWeight: FontWeight.bold,
              color: clanColorMap[characterClanMap[character]!],
            ),
          ),
        ),

        // name
        Positioned(
          top: 55 * height / kDefaultCardHeight,
          left: 12 * height / kDefaultCardHeight,
          child: Wrap(
              spacing: 8 * height / kDefaultCardHeight,
              direction: Axis.vertical,
              children: characterDisplayNameMap[character]!
                  .split("")
                  .map((e) => Text(
                        e,
                        style: TextStyle(
                          fontSize: 24 * height / kDefaultCardHeight,
                          color: Colors.grey.shade50,
                        ),
                      ))
                  .toList()),
        ),

        // health
        Positioned(
          bottom: 80 * height / kDefaultCardHeight,
          left: 12 * height / kDefaultCardHeight,
          child: RotatedBox(
            quarterTurns: 2,
            child: RatingBar.builder(
              direction: Axis.vertical,
              itemSize: 24 * height / kDefaultCardHeight,
              ignoreGestures: true,
              initialRating: health.toDouble(),
              itemCount: role == RoleCardValue.zhuGong
                  ? characterHealthMap[character]! + 1
                  : characterHealthMap[character]!,
              itemBuilder: (context, index) {
                if (health < 2) {
                  return Image.asset("assets/images/health/1.png");
                } else if (health == 2) {
                  return Image.asset("assets/images/health/2.png");
                } else if (health == 3) {
                  return Image.asset("assets/images/health/3.png");
                } else if (health == 4) {
                  return Image.asset("assets/images/health/4.png");
                } else {
                  return Image.asset("assets/images/health/5.png");
                }
              },
              onRatingUpdate: (value) {},
            ),
          ),
        ),

        // hand card
        Positioned(
          left: 10 * height / kDefaultCardHeight,
          bottom: 12 * height / kDefaultCardHeight,
          child: Column(
            children: [
              SizedBox(
                width: 32 * height / kDefaultCardHeight,
                child: ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcATop),
                    child: Image.asset("assets/images/cards.png")),
              ),
              // Icon(FontAwesomeIcons.car, size: 24, color: Colors.white,),
              Text(
                handCards.toString(),
                style: TextStyle(
                  fontSize: 28 * height / kDefaultCardHeight,
                  color: Colors.grey.shade50,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCharacterWidget() {
    return Tooltip(
      message: characterSkillDescriptionMap[character],
      textStyle: const TextStyle(fontSize: 24, color: Colors.white),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // image
          SizedBox(
            height: height,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.grey.shade800, width: 2),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                characterImageMap[character]!,
                fit: BoxFit.fill,
              ),
            ),
          ),

          // role
          Positioned(
              top: -10 * height / kDefaultCardHeight,
              right: -10 * height / kDefaultCardHeight,
              child: Container(
                width: 64 * height / kDefaultCardHeight,
                height: 64 * height / kDefaultCardHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: Text(
                    showRole ? roleDisplayNameMap[role]! : "?",
                    style: TextStyle(
                      fontSize: 40 * height / kDefaultCardHeight,
                      fontWeight: FontWeight.bold,
                      color: showRole ? roleColorMap[role] : Colors.black,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        _buildBackgroundWidget(context),
        _buildCharacterWidget(),
      ],
    );
  }
}
