import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/view/pages/main/home/components/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductItem extends StatelessWidget {
  final Product product; //stl이라서 final을 붙여준다
  const ProductItem(this.product, {Key? key}) : super(key: key); //선택적 매개변수가 있으면 무조건 맨앞에 적어준다.

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15), //사진 모서리 둥글게
              child: CachedNetworkImage(
                imageUrl: product.urlToImage,
                width: 115,
                height: 115,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
                  value: progress.progress, // 로딩시간
                ),
              ),
            ),
            const SizedBox(width: 16),
            ProductDetail(product)
          ],
        ),
      ),
    );
  }
}
