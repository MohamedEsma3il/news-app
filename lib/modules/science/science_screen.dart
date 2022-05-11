import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_aap/shared/component/components.dart';
import 'package:news_aap/shared/cubit/cubit.dart';
import 'package:news_aap/shared/cubit/states.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        var list =NewsCubit.get(context).science;
        return articleBuilder (list,context);

      },
    );
  }
}
