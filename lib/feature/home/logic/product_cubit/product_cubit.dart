import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';
import 'package:odc_ecommerce/feature/home/data/repo/home_repo.dart';

import 'product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());

  final HomeRepo homeRepo;
  List<AllProductModel>? item;

  Future<void> getAllProduct() async {
    emit(ProductLoading());
    final result = await homeRepo.getAllProduct();
    result.fold((failure) {
      emit(
        ProductFailure(failure.errorMessage),
      );
    }, (product) {
      // log('product $product');
      item = product;
      return emit(ProductSuccess());
    });
  }
}
