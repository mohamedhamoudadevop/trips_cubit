import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_cubit/layout/cubit/states.dart';
import 'package:home_cubit/modules/Home/home_screen.dart';
import 'package:home_cubit/modules/profile/profile.dart';
import 'package:home_cubit/modules/setting/setting.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    HomeScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }
}
