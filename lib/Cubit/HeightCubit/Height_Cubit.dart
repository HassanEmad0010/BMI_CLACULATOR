
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Weight_State.dart';

class HeightCubit extends Cubit<HeightState>{

  HeightCubit():super(InitialHeightState());

  int Height=0;
  void getHeight ({required int Height,required String inc_dec} ){

    if (inc_dec =="I")
      {
        this.Height+=Height;
      emit(ChangingHeightState());
      }
    else if (inc_dec =="D")
      {
        this.Height-=Height;
        emit(ChangingHeightState());
      }

  }







}