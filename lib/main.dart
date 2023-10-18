import 'package:flutter/material.dart';
import 'package:waste_water_app/pages/ask_expert.dart';
import 'package:waste_water_app/pages/faq.dart';
import 'package:waste_water_app/pages/gallery.dart';
import 'package:waste_water_app/pages/info.dart';
import 'package:waste_water_app/pages/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wastewater Management',
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
            bodyText1: TextStyle(fontSize: 17),
            subtitle1: TextStyle(fontSize: 15, color: Colors.black45)),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    InfoPage(),
    const FaqPage(),
    const AskExpertPage(),
    const Gallery(),
    const NewsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Waste Water Management"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 24),
        unselectedIconTheme: const IconThemeData(size: 20),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded), label: "Info"),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_rounded), label: "FAQ"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: "Ask An Expert"),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_rounded), label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded), label: "News"),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
