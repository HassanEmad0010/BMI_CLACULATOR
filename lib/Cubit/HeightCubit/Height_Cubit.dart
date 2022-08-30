
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Height_State.dart';

class HeightCubit extends Cubit<HeightState>{

  HeightCubit():super(InitialHeightState());

  double Height=170;
  void getHeight ({required double Height,required String inc_dec} ){

    this.Height= Height;
    emit(ChangingHeightState());



  }







}