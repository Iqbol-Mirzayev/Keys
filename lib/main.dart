import 'package:flutter/material.dart';
import 'package:videoplayer/home_page.dart';
import 'package:videoplayer/page_keys.dart';
import 'package:videoplayer/profile_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (v) {
            _index = v;
            setState(() {});
          },
          selectedIndex: _index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          ]),
      body: _index != 0
          ? ProfilePage(key: PageKeys.instance.profileKey)
          : HomePage(key: PageKeys.instance.homeKey),
    );
  }
}
