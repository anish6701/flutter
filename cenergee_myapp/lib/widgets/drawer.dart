import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final imageurl = "/assets/images/loginpage.png";
    final imageurl =
        "https://images.travelandleisureindia.in/wp-content/uploads/2019/10/Brazil-insides8.jpg";
    const IconData phone = IconData(0xe4a2, fontFamily: 'MaterialIcons');
    const IconData account_balance_wallet =
        IconData(0xe041, fontFamily: 'MaterialIcons');

    return Drawer(
      child: Container(
        // color: Colors.deepPurple,  //to give color to complete drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Minas Shaikh"),
                accountEmail: Text("minas.s@paynet.co.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                  // backgroundImage: AssetImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Self Resolution",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.selfResolutionRoute);
              },
            ),
            ListTile(
              // leading: Icon(
              //   CupertinoIcons.profile_circled,
              //   color: Colors.black,
              // ),
              leading: Icon(account_balance_wallet),
              title: Text(
                "Wallet",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.myWalletRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.gift,
                color: Colors.black,
              ),
              title: Text(
                "Refer a friend",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.referFriendRoute);
              },
            ),
            ListTile(
              // leading: Icon(
              //   CupertinoIcons.mail,
              //   color: Colors.black,
              // ),
              leading: Icon(phone),
              title: Text(
                "Call us",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.callUsRoute);
              },
            ),
            ListTile(
              // leading: Icon(
              //   CupertinoIcons.mail,
              //   color: Colors.black,
              // ),
              leading: Icon(Icons.help_outline_rounded),
              title: Text(
                "Help",
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.helpMeRoute);
              },
            ),
            ListTile(
              // leading: Icon(
              //   CupertinoIcons.mail,
              //   color: Colors.black,
              // ),
              leading: Icon(Icons.logout_rounded),
              title: Text(
                "Log out",
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
