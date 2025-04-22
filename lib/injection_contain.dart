import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth feature/data/auth_respostoryimp/authresportyimp.dart';
import 'auth feature/data/data_auth_remote/data_auth_remote.dart';
import 'auth feature/domain/resporitories/auth_resportory.dart';
import 'auth feature/domain/usescases/checkEmailusecase.dart';
import 'auth feature/domain/usescases/gotoScucessResetpassworduscase.dart';
import 'auth feature/domain/usescases/loginuscase.dart';
import 'auth feature/domain/usescases/signupusecase.dart';
import 'auth feature/present/bloc/auth_bloc.dart';
import 'core/class/crud.dart';

import 'ordersfeature/data/data_remote/data_remote.dart';
import 'ordersfeature/data/respotories/orders_respositoryImp.dart';
import 'ordersfeature/domain/resporitories/orders_repository.dart';
import 'ordersfeature/domain/usercases/addusescase.dart';
import 'ordersfeature/domain/usercases/deletorder_usecase.dart';
import 'ordersfeature/domain/usercases/getApproveOrders_usecase.dart';
import 'ordersfeature/domain/usercases/getArchiveOrders_usescase.dart';
import 'ordersfeature/domain/usercases/getcheckout_usecase.dart';
import 'ordersfeature/domain/usercases/getdataservice_usescase.dart';
import 'ordersfeature/domain/usercases/getpendingorders_usercase.dart';
import 'ordersfeature/domain/usercases/neg_usescase.dart';
import 'ordersfeature/present/bloc/orders_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerFactory(() => OrdersBloc(
        getdataserviceUsescase: sl(),
        deletOrdersUsescase: sl(),
        getCheckoutUsercase: sl(),
         getApproveOrdersUsercase: sl(),
          getArchiveOrdersUsercase: sl(),
           getpendingOrdersUsercase: sl(),
        
        
        // addUsescase: sl(),
        // negUsercase: sl(),
      ));

  // sl.registerLazySingleton(() => InternetConnectionChecker());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton(() => DeletOrdersUsescase(sl()));
  sl.registerLazySingleton(() => GetCheckoutUsercase(sl()));
  sl.registerLazySingleton(() => AddUsescase(sl()));
  sl.registerLazySingleton(() => NegUsercase(sl()));
  sl.registerLazySingleton(() => GetdataserviceUsescase(sl()));

  sl.registerLazySingleton(() => GetApproveOrdersUsercase(sl()));
  sl.registerLazySingleton(() => GetArchiveOrdersUsercase(sl()));
  sl.registerLazySingleton(() => GetpendingOrdersUsercase(sl()));

//===========authbloc

  sl.registerLazySingleton(() => AuthBloc(
      checkEmailusecase: sl(),
      gotoScucessResetpassworduscase: sl(),
      loginUsescase: sl(),
      signupUsescase: sl()));

  sl.registerLazySingleton(() => LoginUsescase(sl()));
  sl.registerLazySingleton(() => SignupUsescase(sl()));
  sl.registerLazySingleton(() => GotoScucessResetpassworduscase(sl()));
  sl.registerLazySingleton(() => CheckEmailusecase(sl()));


  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
//============================
  sl.registerLazySingleton(() => Crud());
  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImp(crud: sl()));
  sl.registerLazySingleton<OrdersRepository>(() => OrdersRepositoryImp(
        remoteDataSource: sl(),
        sharedPreferences: sl(),
      ));

  sl.registerLazySingleton<AuthRepository>(() =>
      AuthResportoryImp(remotedataSourceAuth: sl(), sharedPreferences: sl()));
  sl.registerLazySingleton<RemoteDataSourceAuth>(
      () => RemoteDataSourceAuthimp(crud: sl()));
}
