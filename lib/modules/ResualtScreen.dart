import 'package:flutter/material.dart';

import '../componants/componants.sharedcomponant/componant.dart';

class ResultScreen extends StatelessWidget {

  final num result;
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
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(color: Colors.lightBlueAccent),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [



                Container(
                  height: 200,

                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.rectangle,


                  ),
                  child: Center(
                    child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Gender: ${isMale? 'Male' : 'Female'}  "  ,style:
                        const TextStyle(fontSize:30 ,color: Colors.white,),),
                        Text("Your age is: $age ",style:
                        const TextStyle(fontSize:30,fontWeight: FontWeight.w400 ,color: Colors.white),),
                        Text("Your BMI is: $result ",style:
                        const TextStyle(fontSize:30,fontWeight: FontWeight.w400,color: Colors.white ),),
                      ],
                    ),
                  ),
                ),
//const                   LinearProgressIndicator(),
                const SizedBox(height: 30,

                ),




                ElevatedButton(
                  child: const Text('What is this?'),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 900,
                          color: Colors.indigoAccent,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Column(
                                  children: [
                                    bmiInformation(),
                                    ElevatedButton(
                                      child: const Text('Close'),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),





                //BMI referance






              ],
            ),
          ),




      );



  }


}
