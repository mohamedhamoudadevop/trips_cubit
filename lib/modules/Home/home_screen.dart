import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_cubit/modules/Home/cubit/cubit.dart';
import 'package:home_cubit/modules/Home/cubit/states.dart';
import 'package:home_cubit/shared/components/components.dart';
import 'package:home_cubit/shared/styles/colors.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => TopDestinationCubit()..getTopDestination(context),
      child: BlocConsumer<TopDestinationCubit, TopDestinationStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is TopDestinationSuccessState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: defaultColor,
                title: Text('Home'),
                centerTitle: true,
              ),
              backgroundColor: defaultColor,
              body: ConditionalBuilderRec(
                condition: true,
                builder: (context) => ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: TopDestinationCubit.get(context)
                      .TopDestinationModel
                      .length,
                  itemBuilder: (context, index) {
                    return HomeDetailsItem(
                        context,
                        mq.width * 0.80,
                        mq.height * 0.30,
                        TopDestinationCubit.get(context)
                            .TopDestinationModel[index]
                            .image,
                        TopDestinationCubit.get(context)
                            .TopDestinationModel[index]
                            .name,
                        () {});
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 8,
                    );
                  },
                ),
                fallback: (context) => Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
