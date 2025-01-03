import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  final String image, description, backgroundimage;
  final Widget title;
  const PageViewItem({super.key, required this.image, required this.title, required this.description, required this.backgroundimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(backgroundimage, fit: BoxFit.fill,)),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Text(
                textAlign: TextAlign.right ,
                'تخطي', style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          title,
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              description,
              textAlign: TextAlign.center,              
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),              
            ),
              )
        ])
      ],
    );
  }
}