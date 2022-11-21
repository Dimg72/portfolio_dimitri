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
                        style : const TextStyle( color: Colors.white), 
                        textAlign: TextAlign.justify, 
                      ),),
                  ),
                Expanded(child: 
                ScrollSnapList(
                  dynamicItemSize: true,
                  itemSize: sizeHeigth/3,
                  itemCount: listPictureFP.length,
                  itemBuilder: (BuildContext context, int index ) {
                    return Card(child : Image.asset(listPictureFP[index]));
                  }, onItemFocus: (int ) {  },
                )
              ),
            ]),
          )


          //  Container(
          //       color: Color.fromARGB(255, 55, 72, 106),
          //       width: sizeWidth,
          //         child: Column(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(top : sizeHeigth/30),
          //             child: Text("My first project", style : TextStyle( fontSize: sizeHeigth/30, color: Colors.white),),
          //           ),
          //           Padding(
          //             padding: EdgeInsets.symmetric(vertical: sizeHeigth/25),
          //             child: Container(
          //               child: Text(firstProjectInfo(), 
          //                 style : const TextStyle( color: Colors.white), 
          //                 textAlign: TextAlign.justify, 
          //               ), 
          //               width: sizeWidth/2,),
          //           ),
          //           Text("You can click on each picture to see more.",style : TextStyle( fontSize: sizeHeigth/60, color: Colors.white) ),
          //           Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               SizedBox(
          //                 width: sizeWidth/2,
          //                 child: CarouselSlider.builder(
          //                   itemCount: listPictureFP.length, 
          //                   options: CarouselOptions(
          //                     height: sizeHeigth/2 + 50,
          //                      autoPlay: true,
          //                      onPageChanged: (index, reason) {
          //                         setState(() {
          //                           activeIndex = index;
          //                         });
          //                      }
          //                     ),
          //                   itemBuilder: (context, index, realIndex) {
          //                     final urlImage = listPictureFP[index];
          //                     return SingleChildScrollView(
          //                       physics: NeverScrollableScrollPhysics(),
          //                       child : InkWell(
          //                         child: Column(
          //                           children: [
          //                             Padding(
          //                               padding: EdgeInsets.symmetric(vertical: sizeHeigth/85),
          //                               child: Text(listTitlePic[index], style : TextStyle(fontSize: sizeHeigth/45, color: Colors.white)),
          //                             ),
          //                             Image.asset(urlImage, fit : BoxFit.fill, height: sizeHeigth/2),  
          //                           ],
          //                         ),
          //                         onTap: () {
          //                             showDialog(
          //                             context: context, 
          //                             builder: (BuildContext context) {
          //                             return AlertDialog(
          //                                 title : Text(
          //                                   listTitlePic[index], 
          //                                   textAlign: TextAlign.center,
          //                                   style: TextStyle(fontWeight: FontWeight.bold)
          //                                   ),
          //                                 content:  Image.asset(listPictureFP[index], ),
          //                                 actions: <Widget>[
          //                                   TextButton(
          //                                     child: Text("retour", style : TextStyle(color : Colors.black)),
          //                                     onPressed: () { Navigator.of(context).pop();},
          //                                   )
          //                                 ],
          //                               );
          //                             },);
          //                         },
          //                       )
          //                     );
          //                   }, 
          //                 ),
          //               ),
          //               SizedBox(height: sizeHeigth/40,),
          //               buildIndicator(),
          //             ],
          //           ),
                    
          //         ],
          //         ),
                
          // ),
            ;
  }
}