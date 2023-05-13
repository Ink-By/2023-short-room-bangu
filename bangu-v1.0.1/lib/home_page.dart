import 'package:flutter/material.dart';
import 'chattingpage/chatting_page.dart';
import 'mainpage/main_scroll_page.dart';
import 'mypage/userpage.dart';
import 'wishlistpage/wish_list_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHome();
}

class _MainHome extends State<MainHome> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    MainScrollPage(),
    ChattingPage(),
    WishListPage(),
    UserPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*** 상단 AppBar ***/
        appBar: AppBar(
          centerTitle:true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading:IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context, null);
            },
            color: Colors.black,
          )
        ),

        /*** 하단 Bottom Navigation Bar ***/
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 30), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat, size: 30), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark, size: 30), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 30), label: ''),
            ],
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed),

        /*** Body : 하단바에서 선택된 페이지 ***/
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}