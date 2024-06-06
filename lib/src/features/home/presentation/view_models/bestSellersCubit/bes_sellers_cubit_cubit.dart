import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bes_sellers_cubit_state.dart';

class BesSellersCubitCubit extends Cubit<BesSellersCubitState> {
  BesSellersCubitCubit() : super(BesSellersCubitInitial());
}
