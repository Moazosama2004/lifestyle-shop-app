import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favourite_cubit_state.dart';

class FavouriteCubit extends Cubit<FavouriteCubitState> {
  FavouriteCubit() : super(FavouriteCubitInitial());

  int fav = 0;
  
  List<String> listItem = [
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
  ];

  void increaseFav() {
    fav++;
    emit(FavouriteCubitIncreaseState());
  }
}
