import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:san_guo_sha/cards/model/card_value.dart';
import 'package:san_guo_sha/cards/util/card_measurements.dart';
import 'package:san_guo_sha/characters/model/character_data_mapping.dart';
import 'package:san_guo_sha/characters/util/character_measurements.dart';

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
    return Stack(
      children: [
        // background
        SizedBox(
          height: height,
          width: height * kCharacterImageAspectRatio + 32,
          child: Card(
            color: Colors.grey.shade800,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),

        // clan
        Positioned(
          top: 10,
          left: 10,
          child: Text(
            characterClanMap[character]!,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: clanColorMap[characterClanMap[character]!],
            ),
          ),
        ),

        // name
        Positioned(
          top: 55,
          left: 12,
          child: Wrap(
              spacing: 8,
              direction: Axis.vertical,
              children: characterDisplayNameMap[character]!
                  .split("")
                  .map((e) => Text(
                        e,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey.shade50,
                        ),
                      ))
                  .toList()),
        ),

        // health
        Positioned(
          bottom: 80,
          left: 12,
          child: RotatedBox(
            quarterTurns: 2,
            child: RatingBar.builder(
              direction: Axis.vertical,
              itemSize: 24,
              ignoreGestures: true,
              initialRating: health.toDouble(),
              itemCount: role == RoleCardValue.zhuGong ? characterHealthMap[character]! + 1 : characterHealthMap[character]!,
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
          left: 10,
          bottom: 12,
          child: Column(
            children: [
              SizedBox(
                width: 32,
                child: ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcATop),
                    child: Image.asset("assets/images/cards.png")),
              ),
              // Icon(FontAwesomeIcons.car, size: 24, color: Colors.white,),
              Text(
                handCards.toString(),
                style: TextStyle(
                  fontSize: 28,
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
          Positioned(
              top: -10,
              right: -10,
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: Text(
                    showRole ? roleDisplayNameMap[role]! : "?",
                    style: TextStyle(
                      fontSize: 40,
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