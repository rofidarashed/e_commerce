import 'package:e_commerce/features/models/product_model.dart';

sealed class ParentState {}

class CubitState extends ParentState {}

class SuccessState extends ParentState {
  final List<ProductModel> products;

  SuccessState({required this.products});
}

class LoadState extends ParentState {}
