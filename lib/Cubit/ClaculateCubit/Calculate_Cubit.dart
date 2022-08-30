
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'CalculateStateState.dart';

class CalculateCubit extends Cubit<CalculateState>{
  CalculateCubit():super(InitialCalculateState());


  int calculateBmiMethode ({required double height, required double weight,})
  {
    double res = weight / pow(height / 100, 2);
    int resInt = res.round();
    emit(NavigationCalculateState());
    return resInt;


  }












}