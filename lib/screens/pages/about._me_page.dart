
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});




  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > 1300) {
        return Container(
             color:  Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("All about me", style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize : sizeHeigth/30 )),
                  SizedBox(height: sizeHeigth/10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/second_page/office.jpg", height: sizeHeigth/3,),
                      SizedBox(width: sizeWidth/15,),
                      Column(
                        children: [
                          Container(width: sizeHeigth/3,
                            child: 
                                Text("Developper web, mobile and application since 2 years in differents languages. I'm always developping my skills and knowledges.", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45), textAlign: TextAlign.justify,),
                            ),
                            SizedBox(height: sizeHeigth/15,),
                            IntrinsicHeight(
                              child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.looks_two_rounded, color: Colors.white, size: sizeHeigth/25,),
                                        SizedBox(height: sizeHeigth/80,),
                                        Text("years experiences", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      thickness: 2,
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.looks_3_rounded, color: Colors.white, size: sizeHeigth/25),
                                        SizedBox(height: sizeHeigth/80,),
                                        Text("projects in flutter", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
                                      ],
                                    ),
                                    //Text("2 years experiences", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/50),),
                                  ],
                                ),
                            ),
                            
                            SizedBox(height: sizeHeigth/25,),
                            ElevatedButton.icon(
                              onPressed: () async {
                                  final url = Uri(
                                  scheme: 'https',
                                  host: 'raw.githubusercontent.com',
                                  path: '/Dimg72/portfolio_dimitri/main/assets/pdf/Cv Gouliarmis Dimtiri.pdf',
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
                              }, 
                              icon: Icon(Icons.download), 
                              label: Text("Download CV"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
      }
      else {
        return Container(
             color:  Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("All about me", style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize : sizeHeigth/30 )),
                  SizedBox(height: sizeHeigth/10,),
                      Image.asset("assets/second_page/office.jpg", height: sizeHeigth/5,),
                      SizedBox(height: sizeWidth/15,),
                      Column(
                        children: [
                          Container(width: sizeHeigth/3,
                            child: 
                                Text("Developper web, mobile and application since 2 years in differents langages. I'm developping my skill everytime", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45), textAlign: TextAlign.justify,),
                            ),
                            SizedBox(height: sizeHeigth/15,),
                             IntrinsicHeight(
                               child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.looks_two_rounded, color: Colors.white, size: sizeHeigth/25,),
                                      SizedBox(height: sizeHeigth/80,),
                                      Text("years experiences", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    thickness: 2,
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.looks_3_rounded, color: Colors.white, size: sizeHeigth/25),
                                      SizedBox(height: sizeHeigth/80,),
                                      Text("projects in flutter", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/45),),
                                    ],
                                  ),
                                  //Text("2 years experiences", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/50),),
                                ],
                            ),
                             ),
                            SizedBox(height: sizeHeigth/25,),
                            ElevatedButton.icon(
                              onPressed: () async {
                                final url = Uri(
                                  scheme: 'https',
                                  host: 'raw.githubusercontent.com',
                                  path: 'Dimg72/portfolio_dimitri/main/assets/pdf/_CV - Gouliarmis Dimitri.pdf',
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }

                              },
                              icon: Icon(Icons.download), 
                              label: Text("Download CV"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey
                              ),
                            )
                        ],
                      ),
          
                ],
              ),
            );;
      }
    });
  }



}