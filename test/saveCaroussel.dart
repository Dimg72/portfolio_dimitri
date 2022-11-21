
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