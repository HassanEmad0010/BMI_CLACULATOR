

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget floatingButton ({

  final VoidCallback? floatingFunction,

 required Icon? iconFloatingButton,
}

    )

{
  return FloatingActionButton(
    mouseCursor: MouseCursor.defer,
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.black,

    onPressed: floatingFunction,

    child: iconFloatingButton,
  );


}



Widget bmiInformation ()
{
  return
    Container(


      decoration: BoxDecoration(

        shape: BoxShape.rectangle ,
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),


      ),

      width: 350,
      height: 150,
      child:

      Center(
        child :


            Column(
              children: const [
                Text("BMI", style: TextStyle(color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,

                    fontSize: 16),),


        Text(

          '<18.5 –> underweight range\n'
              '18.5 - 24.9 –> healthy weight range\n'
              '25  -  29.9 –> overweight range\n'
              '30  -  39.9 –> obese range\n',
          //textAlign: TextAlign.start,
          textAlign: TextAlign.justify,



          style: TextStyle(color: Colors.white70,
              fontWeight: FontWeight.w500,

              fontSize: 16),



        ),
              ],
            ),

      ),
    );


}

