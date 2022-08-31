
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'CalculateStateState.dart';

class CalculateCubit extends Cubit<CalculateState>{
  CalculateCubit():super(InitialCalculateState());

  bool  isReload=false;


  Future<num> calculateBmiMethode ({required double height, required double weight, required age,})
  async{
    isReload=true;
    print("reload 500");
    emit(ReloadCalculateState());
    Future.delayed(const Duration(seconds: 5));
    print("reload after 500");

    if (weight>=30&& age >=4) {
      double res = weight / pow(height / 100, 2);
      int resInt = res.round();
      isReload=false;
      emit(NavigationCalculateState());
      return resInt;
    }
    else
      {
        isReload=false;
        emit(FailedCalculateState());
        return weight;

      }

  }












}