import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:san_guo_sha/cards/model/card_value.dart';
import 'package:san_guo_sha/cards/util/card_measurements.dart';
import 'package:san_guo_sha/characters/model/character_data_mapping.dart';
import 'package:san_guo_sha/characters/util/character_measurements.dart';
import 'glow_card.dart';
import 'package:san_guo_sha/characters/model/character_skill.dart';

class PlayerAvatarWidget extends StatelessWidget {
  const PlayerAvatarWidget({
    Key? key,
    required this.role,
    required this.character,
    required this.health,
    required this.handCards,
    this.height = kDefaultCardHeight,
    this.showRole = false,
    this.isActive = false,
    this.isMe = false,
  }) : super(key: key);

  final RoleCardValue role;
  final CharacterCardValue character;
  final int health;
  final int handCards;
  final double height;
  final bool showRole;
  final bool isActive;
  final bool isMe;

  Widget _buildBackgroundWidget(BuildContext context) {
    // the following measurements are based on kDefaultCardHeight = 360
    // double scale = height / kDefaultCardHeight;

    return Stack(
      children: [
        // background
        SizedBox(
          height: height,
          width: height * kCharacterImageAspectRatio +
              16 * height / kDefaultCardHeight,
          child: GlowCard(
              glowColor: Colors.green,
              cardColor: Colors.grey.shade800,
              isGlowing: isActive),
        ),

        // clan
        Positioned(
          top: 16 * height / kDefaultCardHeight,
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
          top: 62 * height / kDefaultCardHeight,
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
    final skills = characterSkillMap[character]!;
    String message = skills.map((skill) =>
    "【${characterSkillNameMap[skill]}】${characterSkillDescriptionMap[skill]}")
        .join("\n\n");

    return Tooltip(
      message: isMe ? "" : message,
      textStyle: const TextStyle(fontSize: 24, color: Colors.white),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // avatar
          SizedBox(
            height: height,
            width: height * kCardAspectRatio,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.grey.shade800, width: 2),
              ),
              clipBehavior: Clip.antiAlias,
              child: ColorFiltered(
                colorFilter: health <= 0
                    ? ColorFilter.mode(Colors.grey, BlendMode.saturation)
                    : ColorFilter.mode(Colors.white, BlendMode.multiply),
                child: Image.asset(
                  characterImageMap[character]!,
                  fit: BoxFit.fitHeight,
                ),
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
            ),
          ),

          // dead overlay
          if (health <= 0)
            Image.asset("assets/images/dead.png", height: height / 2.5),
        ],
      ),
    );
  }

  Widget _buildSkillButtonsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: characterSkillMap[character]!
          .map(
            (skill) => Tooltip(
              textStyle: const TextStyle(fontSize: 24, color: Colors.white),
              message: characterSkillDescriptionMap[skill],
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Color.fromARGB(255, 120, 150, 90),
                  backgroundColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 15), // Button size
                ),
                child: Text(
                  characterSkillNameMap[skill]!,
                  style: TextStyle(
                    fontSize: 24 * height / kDefaultCardHeight,
                    color: Colors.amber.shade300
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height * kCharacterImageAspectRatio +
          32 * height / kDefaultCardHeight,
      child: Column(
        children: [
          // if (isMe)
          //   Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 36),
          //     child: _buildSkillButtonsWidget(),
          //   ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              _buildBackgroundWidget(context),
              _buildCharacterWidget(),
            ],
          ),

        ],
      ),
    );
  }
}
