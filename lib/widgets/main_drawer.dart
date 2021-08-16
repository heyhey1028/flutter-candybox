import 'package:flutter/material.dart';
import 'package:flutter_candybox/login_ui/login_screen.dart';
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
            Ink(
              color: Colors.lightBlue[100],
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('HOME'),
                trailing: Icon(Icons.chevron_right_rounded),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => MyHomePage(),
                    ),
                  );
                },
              ),
            ),
            Ink(
              color: Colors.orange[300],
              child: ListTile(
                leading: Icon(Icons.login),
                title: Text('LOGIN PAGE UI'),
                trailing: Icon(Icons.chevron_right_rounded),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
