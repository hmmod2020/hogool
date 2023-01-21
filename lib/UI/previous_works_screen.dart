import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/network_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';
import 'package:multi_dropdown/widgets/selection_chip.dart';
import 'package:multi_dropdown/widgets/single_selected_item.dart';

class PreviousWorksScreen extends StatelessWidget {
  const PreviousWorksScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child:Lottie.asset("assets/devepment.json",repeat: true)
            ),
          ),
          Expanded(
            child: Text("Under development",
            style:TextStyle(
              fontSize: 35,
              color: Colors.blueAccent
            ) ,
            ),
          )
        ],
      ),
    );
  }
}