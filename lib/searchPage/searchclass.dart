import 'package:flutter/material.dart';
import 'package:rentcar/searchPage/searchpage.dart';

class searchclass extends StatelessWidget {
  final searchcar showcars;

  const searchclass({Key? key, required this.showcars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        const  Padding(padding: EdgeInsets.all(10)),
          Image.asset(
            showcars.image,
            height: 300,
            width: 600,
          ),
         const SizedBox(
            height: 20,
          ),
          Text(
            showcars.title,
            style:const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
