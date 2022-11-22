// Text("You can click on each picture to see more.",style : TextStyle( fontSize: sizeHeigth/60, color: Colors.white) ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: sizeHeigth -100,
//                           width: sizeWidth/2 + 100,
//                           child: CarouselSlider.builder(
//                             itemCount: listPictureFP.length, 
//                             options: CarouselOptions(
//                               height: sizeHeigth/2,
//                                autoPlay: true,
//                                onPageChanged: (index, reason) {
//                                   setState(() {
//                                      activeIndex = index;
//                                   });
//                                }
//                               ),
//                             itemBuilder: (context, index, realIndex) {
//                               final urlImage = listPictureFP[index];
//                               return SingleChildScrollView(
//                                 physics: NeverScrollableScrollPhysics(),
//                                 child : InkWell(
//                                   child: Column(
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.symmetric(vertical: sizeHeigth/85),
//                                         child: Text(listTitlePic[index], style : TextStyle(fontSize: sizeHeigth/45, color: Colors.white)),
//                                       ),
//                                       Image.asset(urlImage, fit : BoxFit.fill, height: sizeHeigth/2),  
//                                     ],
//                                   ),
//                                   onTap: () {
//                                       showDialog(
//                                       context: context, 
//                                       builder: (BuildContext context) {
//                                       return AlertDialog(
//                                           title : Text(
//                                             listTitlePic[index], 
//                                             textAlign: TextAlign.center,
//                                             style: TextStyle(fontWeight: FontWeight.bold)
//                                             ),
//                                           content:  Image.asset(listPictureFP[index], ),
//                                           actions: <Widget>[
//                                             TextButton(
//                                               child: Text("retour", style : TextStyle(color : Colors.black)),
//                                               onPressed: () { Navigator.of(context).pop();},
//                                             )
//                                           ],
//                                         );
//                                       },);
//                                   },
//                                 )
//                               );
//                             }, 
//                           ),
//                         ),
//                         SizedBox(height: sizeHeigth/40,),
//                         buildIndicator(),
//                       ],
//                     ),
                    
//                   ],
//                   ),
                
//           );
           

            
//   }

//   Widget buildIndicator() {
//     return AnimatedSmoothIndicator(activeIndex: activeIndex, count: listPictureFP.length);    
//   }
        