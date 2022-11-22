import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portefolio_dimitri/screens/pages/about._me_page.dart';
import 'package:portefolio_dimitri/screens/pages/contact_me_page.dart';
import 'package:portefolio_dimitri/screens/pages/home_page.dart';
import 'package:portefolio_dimitri/screens/pages/skills_page.dart';
import 'package:portefolio_dimitri/screens/pages_projects/first_project_page.dart';
import 'package:portefolio_dimitri/screens/pages_projects/second_project_page.dart';
import 'package:portefolio_dimitri/texts/all_long_texts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
 Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final PageController pageController = PageController(initialPage: 0);
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my Website", style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize : sizeHeigth/30 )),
        actions: [],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 1, 1, 2),
      ),

      body :
        PageView(
          scrollDirection: Axis.vertical,
            children: [
            //First Page
            HomePage(),

            //About me Page
            AboutMePage(),


            // Skills page
            Skills(),

            //Portfolio page
            //First project
            FirstProjectPage(),
    
            //second project
            SecondProjectPage(),

            //Contact me Page
            ContactMePAge(),




          ],),
          
    );
  }


}