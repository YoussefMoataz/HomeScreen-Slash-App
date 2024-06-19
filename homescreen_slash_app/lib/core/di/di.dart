import 'package:get_it/get_it.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/products_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/products_api_service_remote_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/data/repositories/products_repository_impl.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/products_repository.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ProductsApiServiceRemote>(ProductsApiServiceRemoteImpl());
  getIt.registerSingleton<ProductsRepository>(ProductsRepositoryImpl());
}
