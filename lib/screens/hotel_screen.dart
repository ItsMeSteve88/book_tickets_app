import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../controllers/constants.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/images/one.png'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            'Open Space',
            style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor),
          ),
          const Gap(5),
          Text(
            'London',
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '£40/night',
            style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor),
          ),
        ],
      ),
    );
  }
}
