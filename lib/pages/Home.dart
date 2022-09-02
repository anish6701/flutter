import 'package:flutter/material.dart';
import 'package:myapp/pages/home1.dart';
import 'package:myapp/components/bottomnav.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   final int _selectedIndex = 0;

  final _pageOptions = [
   const MyHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      // body: _pageOptions(_selectedIndex),
      drawer: Drawer(
        
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Self Resolution'),
              onTap: () {
                const snackBar = SnackBar(content: Text('Liverpool is the best team '));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Wallet'),
              onTap:()  {
                const snackBar = SnackBar(content:Text('hello this is listbutton2'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Refer a Friend'),
              onTap: (){
                const snackBar=SnackBar(content: Text('here is a new word added to the list'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Call Us'),
              onTap:()  {
                const snackBar = SnackBar(content:Text('hello this is listbutton2'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help'),
              onTap:()  {
                const snackBar = SnackBar(content:Text('hello this is listbutton2'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap:()  {
                const snackBar = SnackBar(content:Text('hello this is listbutton2'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation()
    
    );
  }
}
