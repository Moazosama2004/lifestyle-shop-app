import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifestyle_home_app/state_managment/favourite_cubit/favourite_cubit_cubit.dart';
import 'package:lifestyle_home_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteCubitState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[600],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text(
              'Home',
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child:
                        Text('${BlocProvider.of<FavouriteCubit>(context).fav}'),
                  ),
                ),
              ),
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {},
            ),
          ),
          body: const HomeViewBody(),
        );
      },
    );
  }
}
