import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondProjectPage extends StatelessWidget {
  const SecondProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
          child: Column(
          children: [
              Padding(
                    padding: EdgeInsets.only(top : sizeHeigth/30),
                    child: Text("My second project", style : TextStyle( fontSize: sizeHeigth/30, color: Colors.white),),
                  ),
                  SizedBox(height: sizeHeigth/5,),
          Text("In construction and it will be soon presented ;)")
          ],
        ),);
  }
}