import 'package:flutter/material.dart';
import 'flow.dart';
import 'profile.dart';
import 'notifications.dart';
import 'upload.dart';
import 'explore.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _ExactPageNumber = 0;
  PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
        onPageChanged: (pageNo) {
          setState(() {
            _ExactPageNumber = pageNo;
          });
        },
        controller: pageController,
        children: <Widget>[
          Flowi(),
          Explore(),
          Upload(),
          Notifications(),
          profilescreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _ExactPageNumber,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[350],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_sharp), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload_rounded), label: 'Upload'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (currentPageNumber) {
          setState(() {
            pageController.jumpToPage(currentPageNumber);
          });
        },
      ),
    );
  }
}
