import 'package:flutter/material.dart';

class brands extends StatefulWidget {
  const brands({super.key});

  @override
  State<brands> createState() => _brandsState();
}

class _brandsState extends State<brands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'All Brands will  coming soon ',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
    );
  }
}
