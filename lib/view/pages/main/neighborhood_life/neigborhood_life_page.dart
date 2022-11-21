import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/life_body.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/life_header.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NeigborhoodLifePage extends StatelessWidget {
  const NeigborhoodLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("우동"),
            SizedBox(width: 4.0),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          SizedBox(
            child: Container(
              color: Colors.blue,
            ),
          ),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
