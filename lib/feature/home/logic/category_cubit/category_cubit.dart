import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_ecommerce/feature/home/data/repo/home_repo.dart';
import 'package:odc_ecommerce/feature/home/logic/category_cubit/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.homeRepo) : super(CategoryInitial());

  final HomeRepo homeRepo;

  Future<void> getCategories({required String endPoint}) async {
    emit(CategoryLoading());
    final result = await homeRepo.getCategories(endPoint: endPoint);
    result.fold((failure) {
      emit(
        CategoryFailure(failure.errorMessage),
      );
    }, (product) {
      // log('product $product');
      return emit(CategorySuccess(product: product));
    });
  }
}
