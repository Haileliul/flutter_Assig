import 'package:flutter/material.dart';

void main() => runApp(vert());

class vert extends StatelessWidget {
  const vert({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TextButton(
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
        );
      },
    );
  }
}
