import 'package:flutter/material.dart';
import 'package:project_flutter/screens/view.dart';
import 'cart.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6A90F2),
        bottom: TabBar(
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          controller: _tabController,
          onTap: (int index) {
            setState(() {
              _tabController.index = index;
            });
          },
          tabs: const [
            Tab(
              text: 'View product',
            ),
            Tab(
              text: 'Cart product',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff6A90F2),
              ),
              accountName: Text('khalil'),
              accountEmail: Text('khalilEmadothoht@gmail.com'),
              currentAccountPicture: CircleAvatar(),
              currentAccountPictureSize: Size(80, 80),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff4267B2),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0xff5D5D5D),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Color(0xff87879D),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xff5D5D5D),
              ),
              title: Text(
                'My Profile',
                style: TextStyle(
                  color: Color(0xff87879D),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xff5D5D5D),
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Color(0xff87879D),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.account_box_outlined,
                color: Color(0xff5D5D5D),
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: Color(0xff87879D),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0xff5D5D5D),
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Color(0xff87879D),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          View(),
          Cart(),
        ],
      ),
    );
  }
}
