import 'package:assignment_2/AllPostsFragment.dart';
import 'package:assignment_2/FavoritePostsFragment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Posts App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void onUpdateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.clear_all_sharp),
              ),
              Tab(
                icon: Icon(Icons.favorite_border_rounded),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllPostFragment(onUpdate: onUpdateUI),
            FavoritePostFragment(onUpdate: onUpdateUI),
          ],
        ),
      ),
    );
  }
}
