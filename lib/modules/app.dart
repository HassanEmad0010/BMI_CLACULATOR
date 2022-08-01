//import 'dart:math';

//import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:bmiapp/componants/componants.sharedcomponant/componant.dart';
import 'package:flutter/material.dart';
import 'ResualtScreen.dart';

class BMIapp extends StatefulWidget {
  @override
  State<BMIapp> createState() => _BMIappState();
}

class _BMIappState extends State<BMIapp> {
  bool isMale = true;
  double height = 120;
  int age = 15;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("BMI APP"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isMale ? Colors.indigoAccent : Colors.grey[400],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset("assets/photos/male.png"),
                              ),
                              const Text(
                                "Male",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ), //male

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isMale ? Colors.grey[400] : Colors.indigoAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset("assets/photos/female.png"),
                              ),
                              const Text(
                                "Female",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ), //female
                ],
              ),
            ), //male and female

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT        ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueAccent),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}.",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          ),
                          // SizedBox(width: 10,),

                          const Text(
                            "cm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor: Colors.blue,
                          activeColor:Colors.indigoAccent ,
                          thumbColor: Colors.indigoAccent,
                          value: height,
                          max: 220,
                          min: 75,
                          onChanged: (value) {
                            setState(() {});
                            height = value;
                            // print(value);
                          })
                    ],
                  ),
                ),
              ),
            ), //height

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.blueAccent),
                            ),

                            Text(
                              "$weight",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                floatingButton(
                                  iconFloatingButton:Icon(Icons.remove),
                                floatingFunction:(){
                                    setState(() {
                                      weight--;
                                    });
                                  } ,),





                                const SizedBox(
                                  width: 10,
                                ),

                                floatingButton(
                                  iconFloatingButton: Icon(Icons.add),
                                  floatingFunction: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },

                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                floatingButton(
                                iconFloatingButton: Icon(Icons.remove),
                                  floatingFunction: (){
                                  setState(() {
                                    age--;
                                  });
                                  },

                                ),


                                const SizedBox(
                                  width: 10,
                                ),
                                
                                floatingButton(
                                    iconFloatingButton :Icon(Icons.add),

                                    floatingFunction:(){
                                      setState(() {
                                        age++;
                                      });
                                    },



                                ),

                                
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ), //weight age





            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                height: 50,
                /*
                  onPressed: (){
                    Navigator.of(context).pushNamed('/settings');
                  },*/

                onPressed: () {
                  double res = weight / pow(height/100, 2);
                  print("res is $res");
                 int resInt = res.round();
                  print("res int is $resInt");


                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return ResultScreen(
                          result: resInt,
                          age: age,
                          isMale: isMale);
                    }),
                  );
                  /*
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context)=>ResultScreen(),
                        ),
                    );*/
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ), //calc button
          ],
        ),
      );

  }
}
