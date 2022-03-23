import 'package:flutter/material.dart';
import 'package:movie_db/Theme/main_color.dart';
import 'package:movie_db/group_list/group_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  //bool lightMode;

  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Друзья',
    ),
    GroupListWidget(),
    Text(
      'Аккаунт',
    ),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ВКонтакте"),
          centerTitle: true,
          backgroundColor: AppColor.mainVkColor),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Друзья",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Группы",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Аккаунт",
          ),
        ],
        onTap: onSelectedTab,
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
    );
  }
}
