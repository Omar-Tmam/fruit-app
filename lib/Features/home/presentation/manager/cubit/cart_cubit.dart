import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/Features/home/data/models/product_model.dart';

class CartCubit extends Cubit<List<ProductModel>> {
  CartCubit() : super([]);

  void addToCart(ProductModel product) {
    final updatedCart = List<ProductModel>.from(state)..add(product);
    emit(updatedCart);
  }

  List<ProductModel> get uniqueProducts {
    final seenNames = <String>{};
    return state.where((item) => seenNames.add(item.name)).toList();
  }

  int productCount(ProductModel product) {
    return state.where((item) => item.name == product.name).length;
  }
}
