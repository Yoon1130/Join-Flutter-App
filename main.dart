import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat used firebase',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('fire chat App'),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              Text('두번째 스크린'),
              Text('세번째 스크린'),
              Text('네번째 스크린'),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.add),
                text: 'add',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'friends',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'my list',
              )
            ],
          ),
        ),
      ),
    );
  }
}
