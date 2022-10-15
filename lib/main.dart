import 'package:flutter/material.dart';
import 'package:hotelbooking/HistoryPage.dart';
import 'package:hotelbooking/SettingsPage.dart';

import 'AccountPage.dart';
import 'ChatPage.dart';
import 'ContactPage.dart';
import 'LogoutPage.dart';
import 'OfferPage.dart';
import 'SharePage.dart';
import 'TnC_Page.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}
bool islogin=false;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get drawer => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.blue[300],
          body: CustomScrollView(
            slivers: [
              SliverAppBar(

                automaticallyImplyLeading: true,
                backgroundColor: Colors.black,
                //floating: true,
               // pinned: true,
               // snap: false,
                centerTitle: true,
                title: const Text('Hotel Booking'),
               actions: [
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                ],
                bottom: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.black,
                  title: Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search),
                          // suffixIcon: Icon(Icons.favorite)
                        ),
                        ),
                      ),
                    ),
                  ),
                ),

            ],
          ),

          drawer: Drawer(
            backgroundColor: Colors.black,
            child: islogin? Container(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                   const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    accountName: Text(
                      "MHD Mahmud Anik",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text("anik11556@gmail.com",
                        style: TextStyle(color: Colors.black)),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text(
                        "M",
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            backgroundColor: Colors.grey),
                      ),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title:
                        Text("Settings", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>SettingsPage()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>SharePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.contacts, color: Colors.white),
                    title:
                        const Text("Contact Us", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>ChatPage()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.flag_rounded,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Terms & Condition",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>TnC_Page()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {setState(() {
                      islogin=false;
                    });
                    },
                  ),
                ],
              ),
            )
            : Container(
          child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(child: Text(' ')),
                            Container(child: Text(' ')),
                            Container(child: Text(' ')),
                            Container(),
                            Container(),

                            Center(
                              child: FlatButton(

                                  color:Colors.green,
                                  child:Container(child: Text('Login')),
                                  onPressed: (){setState(() {
                                    islogin=true;
                                  });}, ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

        ListTile(
          leading: Icon(Icons.settings, color: Colors.white),
          title:
          Text("Settings", style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>SettingsPage()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
            color: Colors.white,
          ),
          title: const Text(
            "Share",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>SharePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.contacts, color: Colors.white),
          title:
          const Text("Contact Us", style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>ChatPage()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.flag_rounded,
            color: Colors.white,
          ),
          title: const Text(
            "Terms & Condition",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>TnC_Page()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          title: const Text(
            "Logout",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {setState(() {
            islogin=false;
          });},
        ),
        ],
      ),
    ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            // currentIndex: 2,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.chat),
                  onPressed:  (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ChatPage()),
                    );
                  },
                ),
                label: 'Chat',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.shopping_basket_sharp),
                  onPressed:  (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  OfferPage()),
                    );
                  },
                ),
                label: 'Offers',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.history),
                  onPressed:  (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HistoryPage()),
                    );
                  },
                ),
                label: 'History',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.home),
                  onPressed:  (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  AccountPage()),
                    );
                  },
                ),
                label: 'Account',
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
