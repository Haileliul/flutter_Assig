import 'package:flutter/material.dart';
import 'package:flutter_assig/Tabs/group.dart';
import 'package:flutter_assig/Tabs/home.dart';
import 'package:flutter_assig/Tabs/market.dart';
import 'package:flutter_assig/Tabs/message.dart';
import 'package:flutter_assig/Tabs/notification.dart';
import 'package:flutter_assig/Tabs/video.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _MyhomePage(),
    );
  }
}

class _MyhomePage extends StatefulWidget {
  const _MyhomePage({super.key});

  @override
  State<_MyhomePage> createState() => __MyhomePageState();
}

class __MyhomePageState extends State<_MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
              focusColor: Colors.amber,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
              // highlightColor: Colors.amber,
            ),
          ],
          bottom: const TabBar(
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home_outlined)),
                Tab(icon: Icon(Icons.group_outlined)),
                Tab(icon: Icon(Icons.messenger_outline_outlined)),
                Tab(icon: Icon(Icons.notifications_on_outlined)),
                Tab(icon: Icon(Icons.ondemand_video_outlined)),
                Tab(icon: Icon(Icons.shop_outlined)),
              ]),
        ),
        body: const TabBarView(children: <Widget>[
          Home(),
          Group(),
          Message(),
          Notific(),
          Video(),
          Market(),
        ]),
      ),
    );
  }
}
