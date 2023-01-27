import 'package:flutter/material.dart';

void main() => runApp(drowe());

class drowe extends StatelessWidget {
  drowe({super.key});

  final List items = [
    {
      "pre": Icon(Icons.home),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
    {
      "pre": Icon(Icons.cabin),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
    {
      "pre": Icon(Icons.home),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
    {
      "pre": Icon(Icons.home),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
    {
      "pre": Icon(Icons.home),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
    {
      "pre": Icon(Icons.home),
      "title": Text("Haile"),
      "post": Icon(Icons.bolt),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: 300,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
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
                    // focusColor: Colors.amber,
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
              height: MediaQuery.of(context).size.height * 0.7,
              // color: Colors.yellow,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () {
                        print("it has been cliked");
                      },
                      child: ListTile(
                        leading: items[index]["pre"],
                        title: items[index]["title"],
                        trailing: items[index]["post"],
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                  );
                },
                itemCount: 6,
              ),
            ),

            // list
          ],
        ),
      ),
    );
  }
}
