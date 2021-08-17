import 'package:flutter/material.dart';
import 'package:flutter_candybox/login_ui/login_screen.dart';
import 'package:flutter_candybox/grocery_ui/grocery_screen.dart';
import 'package:flutter_candybox/main.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    foregroundImage:
                        AssetImage('assets/images/flutter_logo.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('FLUTTER CANDY BOX'),
                ],
              ),
            ),
            DrawerTile(
              color: Colors.lightBlue[100],
              icon: Icon(Icons.home),
              title: 'HOME',
              navigateTo: MyHomePage(),
            ),
            DrawerTile(
              color: Colors.orange[300],
              icon: Icon(Icons.login),
              title: 'LOGIN PAGE UI',
              navigateTo: LoginScreen(),
            ),
            DrawerTile(
              color: Colors.green[300],
              icon: Icon(Icons.shopping_bag),
              title: 'GROCERY UI',
              navigateTo: GroceryScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {Key key, this.title, this.icon, this.color, this.navigateTo})
      : super(key: key);

  final String title;
  final Icon icon;
  final Color color;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: color,
      child: ListTile(
        leading: icon,
        title: Text(title),
        trailing: Icon(Icons.chevron_right_rounded),
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => navigateTo,
            ),
          );
        },
      ),
    );
  }
}
