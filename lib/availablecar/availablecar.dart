import 'package:flutter/material.dart';

class availablecar extends StatefulWidget {
  const availablecar({super.key});

  @override
  State<availablecar> createState() => _availablecarState();
}

class _availablecarState extends State<availablecar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'All Available cars will coming soon ',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
    );
  }
}
