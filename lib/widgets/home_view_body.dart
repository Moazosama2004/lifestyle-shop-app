import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifestyle_home_app/state_managment/favourite_cubit/favourite_cubit_cubit.dart';
import 'package:lifestyle_home_app/widgets/lifestyle_main_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainItem(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: GridView.count(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: BlocProvider.of<FavouriteCubit>(context)
                  .listItem
                  .map((item) => Card(
                        elevation: 0.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.cover),
                          ),
                          child: Transform.translate(
                            offset: const Offset(50, -50),
                            child: GestureDetector(
                              onTap: () {
                                BlocProvider.of<FavouriteCubit>(context)
                                    .increaseFav();
                              },
                              child: Container(
                                margin: const EdgeInsets.all(63),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Icon(
                                  Icons.bookmark_border_outlined,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
