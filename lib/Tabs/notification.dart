import 'package:flutter/material.dart';

void main() => runApp(Notific());

class Notific extends StatefulWidget {
  const Notific({super.key});

  @override
  State<Notific> createState() => _NotificState();
}

class _NotificState extends State<Notific> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
