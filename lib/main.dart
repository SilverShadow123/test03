import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(test03());
}

class test03 extends StatelessWidget {
  const test03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> friendList = [
    'Dragon',
    'Immortal',
    'Heavenly Demon',
    'Alliance Leader',
    'Martial King',
    'Angels'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test 03'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (context, index) {
          return Text(
            friendList[index],
            textAlign: TextAlign.center,
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 25,
            color: Colors.blueAccent,
          );
        },

      ),
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //     ),
      //     itemCount: friendList.length,
      //     itemBuilder: (context, index) {
      //       return Column(
      //         children: [
      //           Text(index.toString()),
      //           Text(index.toString()),
      //           Text(friendList[index]),
      //         ],
      //       );
      //     }
      //     ),
    );
  }
}
