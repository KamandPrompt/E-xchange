import 'package:flutter/material.dart';

class Myadds extends StatefulWidget {
  const Myadds({ Key? key }) : super(key: key);

  @override
  _MyaddsState createState() => _MyaddsState();
}

class _MyaddsState extends State<Myadds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wishlist')),
      body: Center(
        child: Text('Wishlist Screen', style: TextStyle(fontSize: 40)),
      ),
    );
  }
}