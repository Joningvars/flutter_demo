import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DART KÓÐI
  // nota random?
  // accessa listann með []??

  List names = [
    "https://th.bing.com/th/id/R.7345a09686f95dafcdea059ca2d19c09?rik=IGBpFtRckHhJ%2fQ&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fYz5iC3d.jpg&ehk=JiqFReoOaRhDNw2eQ%2f1deo9pLFtDAHugma%2fkFx%2bvIWQ%3d&risl=&pid=ImgRaw&r=0",
    "https://image.tmdb.org/t/p/original/2l5UHZBcp9cx1PwKLdisJ0gV9jB.jpg",
    "https://static4.businessinsider.com/image/5c5dd439dde867479d106cc2-1500/shrek-3.jpg",
    "https://th.bing.com/th/id/OIP.qLdXm_4rFHlDQnoN5ihleQHaLH?rs=1&pid=ImgDetMain",
  ];
  String randomImageURL = "Click the button!!!";

  void getRandomName() {
    int randomNumber = Random().nextInt(names.length);
    setState(() {
      randomImageURL = names[randomNumber];
    });
  }

  // DART KÓÐI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text("Random image of Gunnar?", style: TextStyle(fontSize: 40)),
              Image.network(randomImageURL),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getRandomName,
          child: Padding(padding: EdgeInsets.all(10), child: Text('Click me!')),
        ),
      ),
    );
  }
}
