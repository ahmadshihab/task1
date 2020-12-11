import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task1_app/ui/menu_page/bloc/products_bloc.dart';

import 'data/db_helper/db_helper.dart';
import 'data/db_helper/idp_helper.dart';
import 'data/http_helper/http_helper.dart';
import 'data/http_helper/ihttpe_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';

const String BaseUrl = "http://bikehub.store/api/";

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  sl.registerLazySingleton<IDbHelper>(() => DbHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));

  /// ProductBloc

  sl.registerFactory(() => ProductsBloc(sl()));
}
