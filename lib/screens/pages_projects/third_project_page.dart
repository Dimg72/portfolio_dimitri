import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdProjectPage extends StatelessWidget {
  const ThirdProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
                  padding: EdgeInsets.only(top : sizeHeigth/30),
                  child: Text("My third project", style : TextStyle( fontSize: sizeHeigth/30,),),
                ),
          SizedBox(height: sizeHeigth/10,),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeWidth/15),
            child: Text("It's on construction. Don't worry, you'll see more soon ;)", 
              style : TextStyle(fontSize: sizeHeigth/45), 
              textAlign: TextAlign.justify, 
            ),
          ),

        ],
      ),
    );
  }
}