import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

List<Color> _colors = [HexColor('0047FF'), HexColor('FEFEFE')];
List<double> _stops = [-1.1, 1.8];

LinearGradient linear1 = LinearGradient(colors: _colors, stops: _stops);
