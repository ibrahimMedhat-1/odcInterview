import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<Widget> list = [];
  void add() {
    list.add(Expanded(
        child: Container(
      color: Colors.red,
      child: Center(
        child: Text('hema'),
      ),
    )));
    emit(Homeadd());
  }
}
