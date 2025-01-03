import 'package:flutter/material.dart';
import 'package:fruitsapp/constants/app_images.dart';
import 'package:fruitsapp/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
       PageViewItem(
        
        image: Assets.imagesFruitbasketamico1, 
        title: Row(
          children: [
          Text('مرحبا بك في ', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
          Text('Fruit', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
          Text('HUB', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))
        ]), 
        description: 'كتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.', 
        backgroundimage: Assets.imagesVector)
      ],
    );
  }
}