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
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.deepPurpleAccent)
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Test 05')),

      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Race',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey
                  )
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
