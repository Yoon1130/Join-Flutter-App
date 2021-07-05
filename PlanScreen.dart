import 'package:flutter/material.dart';
import 'package:join/ShowScreen.dart';
import 'ShowScreen.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('1.약속 이름과 목적을 입력하세요.'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: '이름'),
              ),
              SizedBox(width: 20),
              TextField(
                decoration: InputDecoration(labelText: '목'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Text('다음'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ShowScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//child: ElevatedButton(
//           style: ElevatedButton.styleFrom(primary: Colors.blue),
//           child: Text('다음'),
//           onPressed: () {},
//         ),
