import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/domain/invesmentOffers/entities/invesmentOffer.dart';

abstract class InvesmentOfferRepo{

  Future<Either<Failure,List<InvesmentOfferEntity>>>getAllInvesmentOffers();
  Future<Either<Failure,InvesmentOfferEntity>>getInvesmentOffer(int id);
}