import 'package:carrot_market/view/pages/main/chatting/chatting_page.dart';
import 'package:carrot_market/view/pages/main/home/home_page.dart';
import 'package:carrot_market/view/pages/main/my_carrot/my_carrot_page.dart';
import 'package:carrot_market/view/pages/main/near_me/near_me_page.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/neigborhood_life_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildIndexedStack(),
    );
  }

  IndexedStack _buildIndexedStack() {
    return IndexedStack(
      index: _selectedIndex, //아이콘클릭시 화면 이동
      children: [
        HomePage(),
        NeigborhoodLifePage(),
        ChattingPage(),
        MyCarrotPage(),
        NearMePage(),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: "동네생활", icon: Icon(CupertinoIcons.square_on_square)),
        BottomNavigationBarItem(label: "내 근처", icon: Icon(CupertinoIcons.placemark)),
        BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: "나의 당근", icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
