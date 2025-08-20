import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Notifications',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body:const Center(
        child: Stack(
          children: [
            Text(
              'Empty Notification ',
              style: TextStyle(color: Colors.black45, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
