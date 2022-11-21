import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../texts/all_long_texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return 
    LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 1000 ) {
         return  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      IconButton(onPressed: () async {
                         final url = Uri(
                                scheme: 'https',
                                host: 'www.linkedin.com',
                                path: '/in/dimitri-gouliarmis-06a60a95/',   
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
                      },
                       icon: Image.asset("assets/icons/linkedin.png")),
                       IconButton(onPressed: () async {
                          final url = Uri(
                                scheme: 'https',
                                host: 'github.com',
                                path: '/Dimg72',   
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
                       },
                       icon: Image.asset("assets/icons/git.png")),
                    ],),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: sizeWidth/25),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: sizeHeigth/30),
                            child: Text("Hi ! I'm Dimitri Gouliarmis", style : TextStyle( fontSize: sizeHeigth/30),),
                          ),
                          Container(
                            width: sizeHeigth/2,
                            child: Padding(
                              padding: EdgeInsets.only(bottom : sizeHeigth/25),
                              child: Text(
                              aboutMe(),
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: sizeHeigth/45),
                                ),
                              ),
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                            child: Text("Contact me", style : TextStyle(color : Colors.white, fontSize: sizeHeigth/45)),
                            onPressed: () async {
                                final url = Uri(
                                  scheme: 'mailto',
                                  path: 'dimitri.gouli@gmail.com',
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
                            },
                          ),
                        ],),
                     ),
                    Image.asset("assets/pictures/profil.png", height: sizeHeigth/2, ),
                    Padding(
                      padding: EdgeInsets.only(top: sizeHeigth/2 + 200),
                      child: Row(
                            children: [
                              Icon(Icons.mouse_outlined),
                              Text("Scroll down"),
                              RotatedBox(quarterTurns: 3,child: Icon(Icons.subdirectory_arrow_left, ))
                            ],
                           ),
                    ),
                   ],
                 );
        }
        else {
          return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      IconButton(onPressed: () {},
                       icon: Image.asset("assets/icons/linkedin.png")),
                       IconButton(onPressed: () {},
                       icon: Image.asset("assets/icons/git.png")),
                    ],),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: sizeWidth/95),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: sizeHeigth/30),
                            child: Text("Hi ! I'm Dimitri Gouliarmis", style : TextStyle( fontSize: sizeHeigth/30),),
                          ),
                          Image.asset("assets/pictures/profil.png", height: sizeHeigth/3, ),
                          Container(
                            width: sizeHeigth/4,
                            child: Padding(
                              padding: EdgeInsets.only(bottom : sizeHeigth/25),
                              child: Text(
                              aboutMe(),
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: sizeHeigth/55),
                                ),
                              ),
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                            child: Text("Contact me", style : TextStyle(color : Colors.white, fontSize: sizeHeigth/45)),
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
                          ),
                          Padding(
                          padding: EdgeInsets.only(top: sizeHeigth/30),
                          child: Row(
                              children: [
                              Icon(Icons.mouse_outlined),
                              Text("Scroll down"),
                              RotatedBox(quarterTurns: 3,child: Icon(Icons.subdirectory_arrow_left, ))
                            ],
                           ),
                           
                    )
                        ],),
                     ),
                    
                  ],);
        }
    });
    
   
  }
}