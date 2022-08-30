import 'package:bmiapp/Cubit/AgeCubit/Age_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeCubit extends Cubit<AgeState>{

  AgeCubit() : super(InitialAgeState());



  int num=0;


  void getAge ({required int number, required inc_dec,})

  {
    if (inc_dec =="I")
      {
        num+=number;
        emit(ChangingAgeState());
      }
    else if(inc_dec=="D")
      {
        num-=number;
        emit(ChangingAgeState());
      }



  }




}