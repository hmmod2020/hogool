import 'package:flutter/material.dart';

import '../widgets/card_invesmet_selected.dart';

class Test extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(right: 25,left: 25),
          child: Column(
            children: [
              SizedBox(height: 40,),
              CardInvesmentSelected()
            ],
          ),
        )
         ),
    );
  }
}