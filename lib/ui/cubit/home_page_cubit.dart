import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/repository/repo.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);
  var Mrepo = MathRepo();

  void add(String num1, String num2) {
    emit(Mrepo.add(num1, num2));
  }

  void multiply(String num1, String num2) {
    emit(Mrepo.multiply(num1, num2));
  }
}
