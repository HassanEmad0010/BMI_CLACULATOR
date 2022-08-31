
import 'package:photo_view/photo_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget floatingButton ({

  final VoidCallback? floatingFunction,

 required Icon? iconFloatingButton,
  required String buttonTag,
}

    )

{
  return FloatingActionButton(
    heroTag: buttonTag,
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

      width: double.infinity,
      height: 400,
      child:

      Center(
        child :


            Column(
              children:  [

                Expanded(child:
            PhotoView(
              backgroundDecoration:BoxDecoration(
                color: Colors.indigo,
                backgroundBlendMode: BlendMode.difference,
              ) ,
                imageProvider: AssetImage("assets/photos/bmi.jpg"),

                ),
                ),
              ],
            ),

      ),
    );


}

Widget buildContainer ({

  Color color=Colors.brown,
  required String text,
  double width=double.infinity,
  double height=180,
  BoxShape shape= BoxShape.rectangle,
 // bool isLink =false,

})

{

  return
      Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape:shape,
          color: color,
        ),


        child:  Center(child: Text(text,
          style: const TextStyle(fontSize: 30,
            fontWeight: FontWeight.w400,
            letterSpacing: 3,
            color: Colors.white60,



          ),)),


      );




}