import 'package:flutter/material.dart';
import 'package:hogool/widgets/card_farmer_home.dart';
import 'package:hogool/widgets/card_new_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardFarmerHome(
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",
        ),
      ),
    );
  }
}