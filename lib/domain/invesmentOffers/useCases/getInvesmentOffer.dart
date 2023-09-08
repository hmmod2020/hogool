import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../entities/invesmentOffer.dart';
import '../repo/invesmentOfferRepo.dart';

class GetInvesmentUseCase {

InvesmentOfferRepo invesmentOfferRepo;
GetInvesmentUseCase({required this.invesmentOfferRepo});

Future<Either<Failure,InvesmentOfferEntity>>call(int id){
  return invesmentOfferRepo.getInvesmentOffer(id);
}

}