part of 'bes_sellers_cubit_cubit.dart';

@immutable
sealed class BesSellersCubitState {}

final class BesSellersCubitInitial extends BesSellersCubitState {}

final class BesSellersCubitLoading extends BesSellersCubitState {}

final class BesSellersCubitSuccess extends BesSellersCubitState {}

final class BesSellersCubitFailure extends BesSellersCubitState {}
