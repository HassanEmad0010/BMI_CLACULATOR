
//test git hub first editing in the code


import 'package:bmiapp/Cubit/AgeCubit/Age_Cubit.dart';
import 'package:bmiapp/Cubit/GenderCubit/Gender_Cubit.dart';
import 'package:bmiapp/Cubit/HeightCubit/Height_Cubit.dart';
import 'package:bmiapp/Cubit/WeightCubit/Weight_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/app.dart';
//import 'test2.dart';

void main() {

    runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AgeCubit()),
        BlocProvider(create: (context)=>WeightCubit()),
        BlocProvider(create: (context)=>HeightCubit()),
        BlocProvider(create:(context)=>GenderCubit() ),
      ],

      child: MaterialApp(
  theme: ThemeData(
  canvasColor: Colors.white,

  //primarySwatch: Colors.teal,

  ),

        debugShowCheckedModeBanner: false,
        title: 'Navigation Basics',
        home: BMIapp(),
      ),
    ));
}



