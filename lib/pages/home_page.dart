import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('images/logo.png', width: 100),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: ListTile(
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      leading: Icon(Icons.info),
                      title: Text('About'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.logout),
                  title: Text('Log out'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
