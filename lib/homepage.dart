import 'package:flutter/material.dart';
import 'package:tabloid/analytics.dart';
import 'package:tabloid/account.dart';
import 'package:tabloid/posts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The HIT Times"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.assessment),
            ),
            new Tab(icon: Icon(Icons.assignment)),
            new Tab(icon: Icon(Icons.calendar_today)),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children:<Widget>[
            new Analytics(),
            new Posts(),
            new Account(),
          ],
      ),
    );
  }
}
