// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_card_flip_animation/card/card_back.dart';
import 'package:flutter_card_flip_animation/card/card_front.dart';

import 'animation/flipper_animation.dart';

void main() {
  runApp(const MyApp());
}

TextStyle textStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Flip Animation"),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: FlipperAnimatioln(
          frontWidget: CardFront(),
          backWidget: CardBack(),
        ),
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  const TestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.green,
      child: Text("Test Card"),
    );
  }
}
