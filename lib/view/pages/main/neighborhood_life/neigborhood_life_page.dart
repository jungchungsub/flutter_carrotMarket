import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';

import 'package:flutter/material.dart';

class NeigborhoodLifePage extends StatelessWidget {
  const NeigborhoodLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
            )
          ],
        ),
      ),
    );
  }
}
