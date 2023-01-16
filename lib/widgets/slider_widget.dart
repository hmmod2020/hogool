import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'card_farmer_home.dart';
import 'card_slied.dart';
class SliderWidgetControl extends StatelessWidget {
  const SliderWidgetControl({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      
      items: [
       
        SlideHogool(image: "khartoum.jpg",text:"تعرف على الاستثمار الزراعي في السودان"),
        SlideHogool(image: "farmer.jpg",text:"إبحث عن افضل المزارعين لمزرعتك"),
        SlideHogool(image: "farm.png",text:"استثمر اموالك في المجال الزراعي"),
        ],
       options: CarouselOptions(
        height: 180,
        autoPlay: true,
        aspectRatio: 16/9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8
       ), );
  }
}