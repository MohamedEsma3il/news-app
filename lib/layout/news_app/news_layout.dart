import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_aap/modules/search/search_screen.dart';
import 'package:news_aap/shared/component/components.dart';
import 'package:news_aap/shared/cubit/cubit.dart';
import 'package:news_aap/shared/cubit/states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context,  state) {
        var cubit=NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('News App'),
            actions: [
              IconButton(
                icon:Icon(Icons.search),
                onPressed: ()
                {
                  navigateTo(context, SearchScreen());
                },),
              IconButton(
                icon:Icon(Icons.brightness_4_outlined),
                onPressed: ()
                {
                  NewsCubit.get(context).changeAppMode();
                },),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: cubit.bottomItems,
            currentIndex: cubit.currentIndex,
            onTap:(index)
            {
              cubit.changeBottomNavBar(index);
            } ,
          ),
        );
      },

    );
  }
}
