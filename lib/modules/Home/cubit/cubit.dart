import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_cubit/models/home_model.dart';
import 'package:home_cubit/modules/Home/cubit/states.dart';
import 'package:home_cubit/shared/network/end_points.dart';
import 'package:home_cubit/shared/network/remote/dio_helper.dart';

class TopDestinationCubit extends Cubit<TopDestinationStates> {
  TopDestinationCubit() : super(TopDestinationInitialState());

  static TopDestinationCubit get(context) => BlocProvider.of(context);

  List<TopDestination> TopDestinationModel = [];

  void getTopDestination(BuildContext context) {
    DioHelper.getData(Url: HOME + HOME_DETAILS).then((value) {
      (value.data['data']['topDestination'] as List<dynamic>).forEach(
        (element) {
          var topDestination = TopDestination.fromJson(element);
          TopDestinationModel.add(topDestination);
        },
      );
      emit(TopDestinationSuccessState());
    }).catchError((error) {
      print(error);
      emit(TopDestinationErrorState());
    });
  }
}
