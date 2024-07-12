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
      // body:
      // ListView.separated(
      //   itemCount: friendList.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //      child: Image.asset(friendList[index]),
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return Divider(
      //       height: 25,
      //       color: Colors.blueAccent,
      //     );
      //   },
      //
      // ),

      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //     ),
      //     itemCount: friendList.length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         child: Image.asset(friendList[index]),
      //       );
      //     }
      //     ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                //color: Colors.green,
                // padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(30),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/a-girl.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.red.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 15)
                    )
                  ]
                ),
                child: Text('Dragon'),
              ),
            ),

            ElevatedButton(onPressed: (){
              // showAboutDialog(context: context,applicationName: 'Sample', c;hildren: [Text('data')]);
              showAboutDialog(context: context, );
            }, child: Text('Dragon')),

            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Heavenly Demon'),
            ),
          ],
        ),
      ),
    );
  }
}
