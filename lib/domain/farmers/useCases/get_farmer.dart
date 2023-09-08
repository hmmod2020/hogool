import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';

import '../entities/farmerEntity.dart';
import '../repo/farmerRepo.dart';


class GetFarmerUseCase {

final FarmerRepository farmerRepository;
final int id ;
GetFarmerUseCase(this.farmerRepository,this.id);

Future<Either<Failure,FarmerEntity>>call() async{
  return await farmerRepository.getFarmer(id);
}

}