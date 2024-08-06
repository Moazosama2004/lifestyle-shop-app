import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifestyle_home_app/state_managment/favourite_cubit/favourite_cubit_cubit.dart';
import 'package:lifestyle_home_app/views/home_view.dart';

void main() => runApp(const LifeStyleApp());

class LifeStyleApp extends StatelessWidget {
  const LifeStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
