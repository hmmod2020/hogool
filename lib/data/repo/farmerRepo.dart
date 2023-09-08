import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/exceptions.dart';

import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/core/helper/networkInfo.dart';


import '../../domain/farmers/entities/farmerEntity.dart';
import '../../domain/farmers/repo/farmerRepo.dart';
import '../farmers/remoteData/farmerDataSource.dart';

class FarmerRepositoryD extends FarmerRepository{

FarmerDataSource dataSource;
NetworkManager networkManager;

FarmerRepositoryD({required this.dataSource,required this.networkManager});

  @override
  Future<Either<Failure, List<FarmerEntity>>> getAllFarmers() async{
   if(await networkManager.isConnected){
try {
  final data= await dataSource.getAllFarmers();
  return right(data);
} on ServerException {
  return left(server_failure());
}
   }else{
   return left(No_connection_failure());
   }
  }

  @override
  Future<Either<Failure, FarmerEntity>> getFarmer(int id)async {
   if (await networkManager.isConnected){
    try {
      final data =await dataSource.getFarmer(id);
      return right(data);
    } on ServerException {
      return left(server_failure());
    }
   }else{
    return left(No_connection_failure());
   }
  }


}