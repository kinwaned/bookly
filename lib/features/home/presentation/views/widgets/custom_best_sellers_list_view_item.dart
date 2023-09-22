import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                // color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testBook2),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child:  Text(
                  'Harry Potter And the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectra),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3,),
              Text('J.K Rowling', style: Styles.textStyle14.copyWith(color: Colors.grey),),
              const SizedBox(height: 3,),
              Text('19.99€', style: Styles.textStyle20.copyWith(fontFamily: kMontserrat, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}