import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CircleWidget extends StatelessWidget {
  final double? size ; 
  final List<Color>? colors;
  const CircleWidget({Key? key, required this.size,required this.colors}) :  
  assert(size != null && size >0),
  assert(colors != null && colors.length >=2)
  ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors!, 
          begin: Alignment.topCenter,
          end: Alignment.topCenter
          )),
    );
  }
}