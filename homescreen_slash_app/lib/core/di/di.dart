import 'package:get_it/get_it.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/categories_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/products_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/categories_api_service_remote_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/products_api_service_remote_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/data/repositories/categories_repository_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/data/repositories/products_repository_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/categories_repository.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/products_repository.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/usecases/get_categories_usecase.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/usecases/get_products_usecase.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ProductsApiServiceRemote>(ProductsApiServiceRemoteImpl());
  getIt.registerSingleton<ProductsRepository>(ProductsRepositoryImpl());
  getIt.registerSingleton<GetProductsUseCase>(GetProductsUseCase());

  getIt.registerSingleton<CategoriesApiServiceRemote>(CategoriesApiServiceRemoteImpl());
  getIt.registerSingleton<CategoriesRepository>(CategoriesRepositoryImpl());
  getIt.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase());
}
