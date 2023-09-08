import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';

import '../entities/farmerEntity.dart';
import '../repo/farmerRepo.dart';

class GetAllFarmersUseCase{
  final FarmerRepository farmerRepository;

 GetAllFarmersUseCase(this.farmerRepository);

Future <Either<Failure,List<FarmerEntity>>> call() async{

  return await farmerRepository.getAllFarmers();
}

}