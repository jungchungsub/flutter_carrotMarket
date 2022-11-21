import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/home/components/product_Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("좌동"),
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
      body: ListView.separated(
        itemBuilder: (context, index) => ProductItem(productList[index]), //ProductItem의 객체를 넘길려고한다.
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.blue,
        ), //구분선을 어떻게 그릴거냐
        itemCount: productList.length,
      ),
    );
  }
}
