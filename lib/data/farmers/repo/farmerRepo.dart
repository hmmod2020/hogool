import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/exceptions.dart';

import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/core/helper/networkInfo.dart';

import '../../../domain/farmers/entities/farmerEntity.dart';
import '../../../domain/farmers/repo/farmerRepo.dart';
import '../remoteData/farmerDataSource.dart';




class FarmerRepositoryD extends FarmerRepository{

FarmerDataSource dataSource;
NetworkManager networkManager;

FarmerRepositoryD( this.dataSource, this.networkManager);

  @override
  Future<Either<Failure, List<FarmerEntity>>> getAllFarmers() async{
   if(await networkManager.isConnected){
try {
  final data= await dataSource.getAllFarmers();
  return right(data);
} on ServerException catch(e) {
  return left(server_failure(failureMsg: e.errorMessage));
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
    } on ServerException catch (e){
      return left(server_failure(failureMsg: e.errorMessage));
    }
   }else{
    return left(No_connection_failure());
   }
  }


}