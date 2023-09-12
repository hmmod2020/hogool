import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';

import '../entities/farmerEntity.dart';
import '../repo/farmerRepo.dart';


class GetFarmerUseCase {

final FarmerRepository farmerRepository;
GetFarmerUseCase(this.farmerRepository);

Future<Either<Failure,FarmerEntity>>call(int id) async{
  return await farmerRepository.getFarmer(id);
}

}