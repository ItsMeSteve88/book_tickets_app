import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../controllers/constants.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //debugPrint('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 17,
      ),
      margin: const EdgeInsets.only(
        right: 17,
        top: 5,
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 5,
          ),
        ],
      ),

      // image in container

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '£${hotel['price']}/night',
            style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor),
          ),
        ],
      ),
    );
  }
}
