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
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue)),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _descriptionComtroller = TextEditingController();

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
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.search),
                suffixIcon: TextButton(
                  child: Text('Search'),
                  onPressed: () {},
                ),
                label: Text('Name'),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
            SizedBox(
              height: 4,
            ),

            //Description

            TextField(
              controller: _descriptionComtroller,
              maxLines: 5,
              maxLength: 200,
              // onTap: (){
              //   print('Tap on Textfield');
              // },
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: 'Enter Description',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                label: Text(
                  'Description',
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
            TextButton(
                onPressed: () {
                  _descriptionComtroller.clear();
                },
                child: Text('Clear')),
            TextField(
              obscureText: true,
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                label: Text('Password'),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
