import 'package:flutter/material.dart';

import '../widgets/card_investment_offer.dart';


class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardInvestmentOffer(
          id: 1,
          duration: 5,
          titel: "مشروع انتاج قمح بسوبا",
          description: "مطلوب ممول لمشروع زراعي في سوبا لزراعة 5 فدان قمح في مشروع سوبا الزراعي  والارض محورية الري",
          yield: 50,
        ),
      ),
    );
  }
}