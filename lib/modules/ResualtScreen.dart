import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;




  ResultScreen ({
    required this.result,
    required this.age,
    required this.isMale,

  });



  @override
  Widget build(BuildContext context) {


     return Scaffold(
        appBar:AppBar(title: const Text("Reesult"),),

        body:
          Container(
            decoration: BoxDecoration(color: Colors.lightBlueAccent),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [




                  Container(
                    height: 200,

                    decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,


                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Gender: ${isMale? 'Male' : 'Female'}  "  ,style:
                          TextStyle(fontSize:30 ,color: Colors.white,),),
                          Text("Your age is: $age ",style:
                          TextStyle(fontSize:30,fontWeight: FontWeight.w400 ,color: Colors.white),),
                          Text("Your BMI is: $result ",style:
                          TextStyle(fontSize:30,fontWeight: FontWeight.w400,color: Colors.white ),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  //BMI referance
                  Container(


                    decoration: BoxDecoration(

                      shape: BoxShape.rectangle ,
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(20),


                    ),

                    width: 350,
                    height: 150,
                    child: const

                    Center(
                      child:

                      Text(
                              'below 18.5 – underweight range\n'
                              '18.5 -> 24.9 –healthy weight range\n'
                              '25 -> 29.9 –  overweight range\n'
                              '30 -> 39.9 –  obese range\n',

                        style: TextStyle(color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),



                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),




      );



  }


}
