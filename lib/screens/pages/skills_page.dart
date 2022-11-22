import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portefolio_dimitri/custom_screen/custom_linear_p.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeigth = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return  LayoutBuilder(
      builder : (context, constraints) {
        if(constraints.maxWidth > 1000) {
          return  Container(
                  color: Colors.blueGrey.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Skills", style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize : sizeHeigth/30 )),
                      SizedBox(height: sizeHeigth/10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("Front-end developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "HTML", value: 70),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "CSS", value: 70), 
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "React", value: 50),
                            ],
                          ),

                          Column(
                            children: [
                              Text("Back-end developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "Java", value: 70),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "Kotlin", value: 60),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "SQL", value: 75),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Mobile developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "Flutter", value: 70),
                              Row(
                                children: [
                                  SizedBox(height: sizeHeigth/8,)
                                ],
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
          return  Container(
                  color: Colors.blueGrey.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Skills", style : TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize : sizeHeigth/30 )),
                      SizedBox(height: sizeHeigth/10,),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text("Front-end developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "HTML", value: 70),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "CSS", value: 70), 
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "React", value: 50),
                            ],
                          ),
                          SizedBox(height: sizeHeigth/20,),
                          Column(
                            children: [
                              Text("Back-end developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "Java", value: 90),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "Kotlin", value: 70),
                              SizedBox(height : sizeHeigth/35),
                              const CustomLinearP(name: "SQL", value: 85),
                            ],
                          ),
                          SizedBox(height: sizeHeigth/20,),
                          Column(
                            children: [
                              Text("Mobile developper", style : TextStyle(color: Colors.white, fontSize: sizeHeigth/40),),
                              SizedBox(height: sizeHeigth/25,),
                              const CustomLinearP(name: "Flutter", value: 70),
                            ],
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                );
        }
      }
       

    );
  }
}