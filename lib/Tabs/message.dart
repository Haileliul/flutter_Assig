import 'package:flutter/material.dart';

void main() => runApp(Message());

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.black,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Messages",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            size: 25,
                          ),
                          splashRadius: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                          splashRadius: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.77,
                color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: Colors.red,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'Assets/images/smiling-woman-point-finger-at-you.jpg'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Your Story"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.67,
                      color: Colors.green,
                      child: ListView(
                        children: [
                          TextButton(
                            onPressed: () {
                              print("I love you!!");
                            },
                            child: ListTile(
                              leading: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'Assets/images/woman-with-hot-cup-at-home-calendar.jpg'),
                                  ),
                                  Text(
                                    "6h",
                                    style: TextStyle(
                                      color: Colors.green,
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              title: Text("Haileliul  Baye"),
                              subtitle: Text("Hi"),
                              trailing: CircleAvatar(
                                radius: 5,
                                backgroundImage: AssetImage(
                                    'Assets/images/woman-with-hot-cup-at-home-calendar.jpg'),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("I love you!!");
                            },
                            child: ListTile(
                              leading: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'Assets/images/woman-with-hot-cup-at-home-calendar.jpg'),
                                  ),
                                  Text(
                                    "6h",
                                    style: TextStyle(
                                      color: Colors.green,
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              title: Text("Haileliul  Baye"),
                              subtitle: Text("Hi"),
                              trailing: CircleAvatar(
                                radius: 5,
                                backgroundImage: AssetImage(
                                    'Assets/images/woman-with-hot-cup-at-home-calendar.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
