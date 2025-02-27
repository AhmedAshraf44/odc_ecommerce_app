import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:odc_ecommerce/core/errors/failure.dart';
import 'package:odc_ecommerce/core/network/dio_helper.dart';
import 'package:odc_ecommerce/core/network/endpoints.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';
import 'package:odc_ecommerce/feature/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  //final ApiService apiService;
  //HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<AllProductModel>>> getAllProduct() async {
    try {
      var response = await DioHelper.getData(
        url: Endpoints.allProductEndPoint,
      );
      // log('true data :$data');
      var data = response.data;

      List<AllProductModel> productsList = [];

      for (int i = 0; i < data.length; i++) {
        productsList.add(
          AllProductModel.fromJson(
            data[i],
          ),
        );
      }
      return right(productsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel>>> getCategories(
      {required String endPoint}) async {
    try {
      var response =
          await DioHelper.getData(url: 'products/category/$endPoint');
      var data = response.data;

      List<AllProductModel> categoriesList = [];
      for (int i = 0; i < data.length; i++) {
        categoriesList.add(
          AllProductModel.fromJson(
            data[i],
          ),
        );
      }
      return right(categoriesList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
