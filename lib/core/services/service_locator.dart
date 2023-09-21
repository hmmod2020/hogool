import 'package:get_it/get_it.dart';
import 'package:hogool/core/helper/networkInfo.dart';
import 'package:hogool/data/auth/loacalData/localAuthDataSource.dart';
import 'package:hogool/data/auth/repo/authRepo.dart';
import 'package:hogool/data/farmers/remoteData/farmerDataSource.dart';
import 'package:hogool/domain/auth/repo/authRepo.dart';
import 'package:hogool/domain/auth/useCases/getTokenUseCase.dart';
import 'package:hogool/domain/auth/useCases/logOutUsecase.dart';
import 'package:hogool/domain/auth/useCases/signInUseCase.dart';
import 'package:hogool/domain/auth/useCases/signUpUseCase.dart';
import 'package:hogool/domain/farmers/repo/farmerRepo.dart';
import 'package:hogool/domain/farmers/useCases/get_all_farmers.dart';
import 'package:hogool/domain/farmers/useCases/get_farmer.dart';
import 'package:hogool/screens/auth/bloc/auth_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/auth/remoteData/authDataSourse.dart';
import '../../data/farmers/repo/farmerRepo.dart';
import '../../domain/auth/useCases/checkedLoggedInUsecase.dart';
import '../../domain/auth/useCases/getUserTupyUseCase.dart';

final sl =GetIt.instance;


 
 
 Future<void> init() async{

 final sharedPreferences = await SharedPreferences.getInstance();
  final internetConnectionCheckerPlus=InternetConnectionCheckerPlus();
   sl.registerLazySingleton(() => sharedPreferences);
    ///--Bloc
    ///
    //sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => AuthBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  

    ///--Use Cases
    
    /// farmer
   sl.registerLazySingleton(() => GetAllFarmersUseCase(sl()));
   sl.registerLazySingleton(() => GetFarmerUseCase(sl()));
   //auth
   sl.registerLazySingleton(() => SignInUseCase(sl()));
   sl.registerLazySingleton(() => SignUpUseCase(sl()));
   sl.registerLazySingleton(() => GetTokenUseCase(sl()));
   sl.registerLazySingleton(() => UserTypeUseCase(sl()));
   sl.registerLazySingleton(() => isLoggedIn(sl()));
   sl.registerLazySingleton(() => LogoutUseCase(sl()));
    

    ///--Repository
    //sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
    //farmer
    sl.registerLazySingleton<FarmerRepository>(() => FarmerRepositoryD(sl(),sl()));
    //auth
    sl.registerLazySingleton<AuthRepo>(() => AuthRepository(sl(), sl(), sl()));




    /// --DATA SOURCE
    //sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
    //auth
    sl.registerLazySingleton<RemoteAuthDataSource>(() => RemoteAuthDataSourceImp(sl(),sl()));
    sl.registerLazySingleton<LocalAuthDataSource>(() => LocalAuthDataSourceImp(sl()));
    //farmer
    sl.registerLazySingleton<FarmerDataSource>(() => FarmerDataSourceImp());



    //--services
    sl.registerLazySingleton<NetworkManager>(() => NetworkManagerCheck(internetChecker: sl()));
    sl.registerLazySingleton<InternetConnectionCheckerPlus>(() => InternetConnectionCheckerPlus());
      
    
  
  }
