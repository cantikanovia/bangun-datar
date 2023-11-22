import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home Page",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          backgroundColor: Colors.green.shade300,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: custommenu(title: "persegi", ImageAssets: "assets/persegi.png",),
                  Expanded(child: custommenu(title: "persegipanjang", ImageAssets: "assets/persegipanjang.png",),
                ],
              )
            ),
            Expanded(
            child: Row(
              children: [
                  Expanded(child: custommenu(title: "segitiga", ImageAssets: "assets/segitiga.png",),
                  Expanded(child: custommenu(title: "lingkaran", ImageAssets: "assets/lingkaran.png",),
            ],
            ),
            )
          ],
        )
      );
  }
}

class custommenu extends StatelessWidget {
  const custommenu({
    super.key,
  });

  final String ImageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green.shade400,
      ),

      child: Column(
        children: [
          Image.asset(ImageAssets, height: 50,),
          Text(
            "persegi",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
        ],
      ),
    );
  }
}
