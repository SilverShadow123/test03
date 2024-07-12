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
      debugShowCheckedModeBanner: false,
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
    'assets/images/a-girl.jpg',
    'assets/images/above-the-mountains.png',
    'assets/images/anime-brothers.jpg',
    'assets/images/anime-coffee-girl.jpg',
    'assets/images/another-anime-girl.jpg',
    'assets/images/arch-girl.png'
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
          return Card(
           child: Image.asset(friendList[index]),
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
