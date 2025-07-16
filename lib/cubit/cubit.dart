import 'package:e_commerce/cubit/cubit_state.dart';
import 'package:e_commerce/features/view/widgets/card_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubit1 extends Cubit<ParentState> {
  Cubit1() : super(CubitState());

  getData() async {
    emit(LoadState());
   await Future.delayed(Duration(microseconds: 10));
    emit(SuccessState(products: cardList));
  }

  }
