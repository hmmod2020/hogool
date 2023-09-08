import 'package:dartz/dartz.dart';
import 'package:hogool/domain/invesmentOffers/repo/invesmentOfferRepo.dart';

import '../../../core/errors/failures.dart';
import '../entities/invesmentOffer.dart';

class GetAllInvesmnetUseCase{


InvesmentOfferRepo invesmentOfferRepo;
GetAllInvesmnetUseCase ({required this.invesmentOfferRepo});

Future<Either<Failure,List<InvesmentOfferEntity>>>call(){
  
  return invesmentOfferRepo.getAllInvesmentOffers();
}


}