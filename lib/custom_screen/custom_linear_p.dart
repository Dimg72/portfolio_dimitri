import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomLinearP extends StatelessWidget {
  final String name;
  final double value; 
  const CustomLinearP({super.key, required this.name, required this.value });

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$name", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
            SizedBox(width: sizeWidth/10,),
            Text("$value", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
          ],
        ),
        LinearPercentIndicator(
            alignment: MainAxisAlignment.center,
            width: sizeWidth/5,
            animation: true,
            animationDuration: 1000,
            lineHeight: 5,
            percent: value/100,
            progressColor: Color.fromARGB(255, 219, 211, 211),
            backgroundColor: Color.fromARGB(255, 55, 60, 86),
        )
      ],
    );
  }
}