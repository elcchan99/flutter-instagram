import 'package:flutter/material.dart';

class StoryModel {
  String avator;
  String name;
  Color color;
  bool readYet;

  StoryModel({this.name, this.color, this.avator, this.readYet = false});
}
