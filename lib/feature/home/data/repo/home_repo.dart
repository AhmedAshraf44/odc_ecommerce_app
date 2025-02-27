import 'package:dartz/dartz.dart';
import 'package:odc_ecommerce/core/errors/failure.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllProductModel>>> getAllProduct();
  Future<Either<Failure, List<AllProductModel>>> getCategories(
      {required String endPoint});
}
