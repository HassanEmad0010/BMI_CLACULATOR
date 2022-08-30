
import 'package:bmiapp/Cubit/WeightCubit/Weight_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeightCubit extends Cubit<WeightState>{

  WeightCubit():super(InitialWeightState());

  int weight=0;
  void getWeight ({required int weight,required String inc_dec} ){

    if (inc_dec =="I")
      {
        this.weight+=weight;
      emit(ChangingWeightState());
      }
    else if (inc_dec =="D")
      {
        this.weight-=weight;
        emit(ChangingWeightState());
      }

  }







}