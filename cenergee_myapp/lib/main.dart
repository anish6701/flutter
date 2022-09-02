import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minas_flutter_tutorial/pages/call_us.dart';
import 'package:minas_flutter_tutorial/pages/help_me.dart';
import 'package:minas_flutter_tutorial/pages/my_wallet.dart';
import 'package:minas_flutter_tutorial/pages/refer_friend.dart';
import 'package:minas_flutter_tutorial/pages/self_resolution.dart';
import 'package:minas_flutter_tutorial/utils/routes.dart';
import 'package:minas_flutter_tutorial/widgets/themes.dart';
import 'pages/homePage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.selfResolutionRoute: (context) => SelfResolution(),
        MyRoutes.myWalletRoute: (context) => MyWallet(),
        MyRoutes.referFriendRoute: (context) => ReferFriend(),
        MyRoutes.callUsRoute: (context) => CallUs(),
        MyRoutes.helpMeRoute: ((context) => HelpMe())
      },
      // home: HomePage(),
    );
  }
}
