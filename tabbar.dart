import 'package:flutter/material.dart';

class Tabbr extends StatefulWidget {
  const Tabbr({Key? key}) : super(key: key);

  @override
  _TabbrState createState() => _TabbrState();
}

class _TabbrState extends State<Tabbr> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: PreferredSize(
                child: TabBar(tabs: [
                  Column(
                    children: [Icon(Icons.person), Text("Profile")],
                  ),
                  Column(
                    children: [Icon(Icons.settings), Text("setting")],
                  ),
                ]),
                preferredSize: Size.fromHeight(150))
            // TabBar(tabs: [Icon(Icons.person), Icon(Icons.search)]),
            ),
        body: TabBarView(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("data"),
                Icon(Icons.alarm),
                FloatingActionButton(onPressed: () {})
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("data"),
                Icon(Icons.alarm),
                FloatingActionButton(onPressed: () {})
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
