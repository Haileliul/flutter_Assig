import 'package:flutter/material.dart';

void main() => runApp(heading());

class heading extends StatelessWidget {
  const heading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
            'Assets/images/businessman-smiling-with-arms-crossed-on-white-background.jpg'),
      ),
      title: Row(
        children: [
          Text("this is Tile for llIst tile "),
          Icon(
            Icons.circle_rounded,
            size: 5,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Follow",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
      subtitle: Row(
        children: [
          Text("this is the sub title  . 1d ."),
          Icon(
            Icons.circle_rounded,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    );
  }
}
