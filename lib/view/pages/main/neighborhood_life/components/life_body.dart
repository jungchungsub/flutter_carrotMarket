import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({required this.neighborhoodLife, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black12,
                    child: Text(
                      neighborhoodLife.category,
                    ),
                  ),
                  Text(neighborhoodLife.date),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: neighborhoodLife.profileImgUri,
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(neighborhoodLife.userName, style: textTheme().bodyText1),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                neighborhoodLife.content,
                style: textTheme().bodyText1,
              ),
            ),
            ClipRRect(
              child: CachedNetworkImage(
                imageUrl: neighborhoodLife.contentImgUri,
                width: 400,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.faceSmile),
                  SizedBox(
                    width: 10,
                  ),
                  Text("공감하기"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(FontAwesomeIcons.message),
                  SizedBox(
                    width: 10,
                  ),
                  Text("댓글쓰기"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("${neighborhoodLife.commentCount}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
