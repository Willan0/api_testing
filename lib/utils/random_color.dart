import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor(){
  Random redR = Random();
  Random greenR = Random();
  Random blueR = Random();
  int red = redR.nextInt(226);
  int green = greenR.nextInt(226);
  int blue = blueR.nextInt(226);
  return Color.fromRGBO(red, green, blue, 1);
}