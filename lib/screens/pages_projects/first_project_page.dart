import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../texts/all_long_texts.dart';

class FirstProjectPage extends StatelessWidget {
  FirstProjectPage({super.key});

  List<String> listPictureFP = ["assets/first_project/0.jpg", "assets/first_project/1.jpg", "assets/first_project/2.gif", "assets/first_project/3.jpg",
  "assets/first_project/4.jpg", "assets/first_project/5.jpg" ];

  List<String> listTitlePic = ["Home", "Information product", "Additives details", "Allergies details", "Others informations", "Setting allergies"];

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return         Container(               
            color: Color.fromARGB(255, 55, 72, 106),
            child: Column(children: [
              Padding(
                    padding: EdgeInsets.only(top : sizeHeigth/30),
                    child: Text("My first project", style : TextStyle( fontSize: sizeHeigth/30, color: Colors.white),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: sizeHeigth/25),
                    child: Container(
                      width: sizeWidth/2,
                      child: Text(firstProjectInfo(), 
                        style : TextStyle( color: Colors.white, fontSize: sizeHeigth/60), 
                        textAlign: TextAlign.justify, 
                      ),),
                  ),
                Expanded(child: 
                ScrollSnapList(
                  dynamicItemSize: true,
                  itemSize: sizeHeigth/4,
                  itemCount: listPictureFP.length,
                  itemBuilder: (BuildContext context, int index ) {
                    return Card(child : Image.asset(listPictureFP[index]));
                  }, onItemFocus: (int ) {  },
                )
              ),
            ]),
          )


            ;
  }
}