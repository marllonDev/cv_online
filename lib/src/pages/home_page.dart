import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: 'HOME',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'PROJECTS',
              ),
              Tab(
                icon: Icon(Icons.perm_contact_calendar_rounded),
                text: 'CONTACT',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: <Widget>[
          Center(
            child: Text('O primeiro texto passou aqui'),
          ),
          Center(
            child: Text('O segundo texto passou aqui'),
          ),
          Center(
            child: Text('O terceiro texto passou aqui'),
          ),
        ]),
      ),
    );
  }
}