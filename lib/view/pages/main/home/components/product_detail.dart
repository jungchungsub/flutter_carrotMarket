import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/util/my_number_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyText1,
          ),
          SizedBox(height: 4.0),
          Text("${product.address} * ${product.publishedAt}"),
          SizedBox(height: 4.0),
          Text(numberPriceFormat("${product.price}"), style: textTheme().headline2), //numberPriceFormat intl리셋
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcons(iconData: CupertinoIcons.chat_bubble_2, count: product.commentsCount),
              const SizedBox(width: 4),
              _buildIcons(iconData: CupertinoIcons.heart, count: product.heartCount),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIcons({required IconData iconData, required int count}) {
    // 좋아요, 댓글 메서드
    return Visibility(
      visible: count > 0, //댓글수가 0인것은 화면에 표시하지 않게 한다.
      child: Row(
        children: [
          Icon(iconData),
          Text("${count}"),
        ],
      ),
    );
  }
}
