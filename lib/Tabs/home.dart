import 'package:flutter/material.dart';
import 'package:flutter_assig/data/mystory.dart';

import '../data/maincontent/bottom.dart';
import '../data/maincontent/heading.dart';
import '../data/photodata.dart';

void main() => runApp(const Home());

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.108,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_pin,
                    size: 32,
                  ),
                  splashRadius: 20.0,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[200])),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "  What's in Your Mind?                 ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo_album,
                      ),
                    ),
                    const Text("Photo"),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.108,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Row(
              children: [
                /*    SingleChildScrollView(
                  child: Row(children: []),
                ), */

                const Expanded(
                  flex: 3,
                  child: mystory(),
                ),
                Expanded(
                  flex: 12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RecentPhotos();
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 5.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.585,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.585,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  // decoration: BoxDecoration(border: BoxBorder() ),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          heading(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.9,
                            color: Colors.red,
                          ),
                          Container(),
                          Row(
                            children: [
                              Bottom(),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          heading(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.9,
                            color: Colors.red,
                          ),
                          Container(),
                          Row(
                            children: [
                              Bottom(),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          heading(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.9,
                            color: Colors.red,
                          ),
                          Container(),
                          Row(
                            children: [
                              Bottom(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
