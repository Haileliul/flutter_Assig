import 'package:flutter/material.dart';

void main() => runApp(Bottom());

class Bottom extends StatelessWidget {
  Bottom({super.key});

  final List Bitems = [
    {
      "icon": Icon(Icons.thumb_up_outlined),
      "value": Text("89K"),
    },
    {
      "icon": Icon(Icons.messenger_outline),
      "value": Text("89K"),
    },
    {
      "icon": Icon(Icons.forward_rounded),
      "value": Text("89K"),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 25,
        width: MediaQuery.of(context).size.width * 0.9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Bitems[index]["icon"],
                    Bitems[index]["value"],
                  ],
                ),
              ),
            );
          },
          itemCount: Bitems.length,
        ),
      ),
    );
  }
}
