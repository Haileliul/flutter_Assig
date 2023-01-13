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
          automaticallyImplyLeading: false,
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
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 25,
                  ),
                  // highlightColor: Colors.amber,
                );
              },
            )
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
        drawer: Container(
          color: Colors.grey,
          width: 300,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                          ),
                          Text(
                            "Menu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      focusColor: Colors.amber,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'Assets/images/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg'),
                ),
                title: Text("Haileliul Baye"),
                subtitle: Text("View Your profile"),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.yellow,
                child: ListView(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.pink,
                      child: TextButton(
                        onPressed: () {
                          print("it has been cliked");
                        },
                        child: ListTile(
                          leading: Icon(Icons.library_add),
                          title: Text("this is the title"),
                          trailing: Text("haha"),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.pink,
                      child: TextButton(
                        onPressed: () {
                          print("it has been cliked");
                        },
                        child: ListTile(
                          leading: Icon(Icons.library_add),
                          title: Text("this is the title"),
                          trailing: Text("haha"),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.pink,
                      child: TextButton(
                        onPressed: () {
                          print("it has been cliked");
                        },
                        child: ListTile(
                          leading: Icon(Icons.library_add),
                          title: Text("this is the title"),
                          trailing: Text("haha"),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.pink,
                      child: TextButton(
                        onPressed: () {
                          print("it has been cliked");
                        },
                        child: ListTile(
                          leading: Icon(Icons.library_add),
                          title: Text("this is the title"),
                          trailing: Text("haha"),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                  ],
                ),
              ),

              // list
            ],
          ),
        ),
      ),
    );
  }
}
