import 'package:flutter/material.dart';
class Home__Page extends StatefulWidget {
  const Home__Page({super.key});

  @override
  State<Home__Page> createState() => _Home__PageState();
}

class _Home__PageState extends State<Home__Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Text('home'),
    );
  }
}
