import 'package:flutter/material.dart';

void main() => runApp(RecentPhotos());

class RecentPhotos extends StatefulWidget {
  const RecentPhotos({super.key});

  @override
  State<RecentPhotos> createState() => _RecentPhotosState();
}

class _RecentPhotosState extends State<RecentPhotos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      // width: 50,
      height: MediaQuery.of(context).size.height * 0.1,
      // height: 50,
      // color: Colors.blue,
      child: Stack(
        children: [
          Image(
            image: AssetImage('Assets/images/cheerful-man-eating-poke.jpg'),
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "haile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "0",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),

      margin: EdgeInsets.symmetric(horizontal: 2),
    );
  }
}
