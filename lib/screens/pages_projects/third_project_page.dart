import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

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
          
         Container(
              width: sizeHeigth/3,
              height: sizeHeigth/4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(width: 5, color: Colors.blueGrey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   IconButton(
                    iconSize: sizeHeigth/20,
                    onPressed: () async {
                          final url = Uri(
                          scheme: 'https',
                          host: 'github.com',
                          path: '/KodiakFR/my_mood',
                        );
                        if(await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } 
                            },
                       icon: Image.asset("assets/icons/git.png")),
                  Padding(
                    padding: EdgeInsets.only(top: sizeHeigth/65),
                    child: Text("name : my mood application", textAlign: TextAlign.justify,),
                  )

              ],
            ),
          )
        ]));
  }
}