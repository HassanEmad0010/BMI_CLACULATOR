
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Gender_State.dart';

class GenderCubit extends Cubit<GenderState>{

  GenderCubit():super(InitialGenderState());

  bool genderIsMale=true;
  Color maleColor =Colors.indigoAccent;
  Color femaleColor = Colors.grey;

  void setGender ({required bool genderIsMale,} ){

    if (genderIsMale ==true)
      {
        this.genderIsMale=genderIsMale;
        maleColor=Colors.indigoAccent;
        femaleColor=Colors.grey;
         emit(ChangingGenderState());
      }
    else if (genderIsMale ==false)
      {
        this.genderIsMale=genderIsMale;
        maleColor=Colors.grey;
        femaleColor=Colors.indigoAccent;
        emit(ChangingGenderState());
      }

  }







}