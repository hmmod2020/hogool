import 'package:dartz/dartz.dart';


import '../../../../../core/errors/failures.dart';
import '../entities/farmerEntity.dart';

abstract class FarmerRepository{

Future<Either<Failure,List<FarmerEntity>>>getAllFarmers();
Future<Either<Failure,FarmerEntity>>getFarmer(int id);
//Future<Either<Object,List<FarmerEntity>>>getFarmersWithFilter();
//make filter class


}