import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMePAge extends StatelessWidget {
  const ContactMePAge({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
          color: Colors.black87,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: sizeHeigth/30),
                child: Text("Contact me", style : TextStyle( fontSize: sizeHeigth/30, color: Colors.white),),
              ),
              SizedBox(height: sizeHeigth/20,),
              SizedBox(height: sizeHeigth/20,width: sizeWidth/3,child: ElevatedButton.icon(onPressed: () async {
                    final url = Uri(
                                  scheme: 'mailto',
                                  path: 'dimitri.gouli@gmail.com',
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
              }, icon: Icon(Icons.mail), label: Text("Mail"), 
                style : ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade400,
              ))),
              SizedBox(height: sizeHeigth/30,),
              SizedBox(height: sizeHeigth/20,width : sizeWidth/3,child: ElevatedButton.icon(onPressed: () async{
                  final url = Uri(
                    scheme: 'https',
                    host: 'www.linkedin.com',
                    path: '/in/dimitri-gouliarmis-06a60a95/',
                  );
                  if(await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },  
                icon: Image.asset("assets/icons/linkedin.png", height: sizeHeigth/40, color: Colors.white), label: Text("LinkedIn"),
                style : ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade400,
              ))),
            ],
          ),
        );
  }


}