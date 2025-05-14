import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class ProductWidget extends StatelessWidget {
  String productImage;
  String name;
  String price;
  String availableStock;
  String stockValue;
  bool showStock;
  bool isStockPending;

  ProductWidget({
    super.key,
    required this.productImage,
    required this.name,
    required this.price,
    required this.stockValue,
    this.availableStock = '',
    this.showStock  = false,
    this.isStockPending  = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: showStock == true ? 0 : 25,
          bottom: 10,
          left: showStock == true ? 0 :15,
          right: showStock == true ? 0 :15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(showStock == true)
            Container(
              width: 150,
              height: 16,
              color: isStockPending == true ? kYellowColor.withOpacity(0.26) : kRedColor.withOpacity(0.26),
              child: Center(child: Text(availableStock,style: AppStyles.whiteTextStyle().copyWith(fontSize: 9,fontWeight: FontWeight.w500,color: isStockPending == true ? kYellowColor : kRedColor),)),
            ),
            Image.asset(productImage, height: 58, width: 81),
            Text(
              price,
              style: AppStyles.whiteTextStyle().copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            ),
            Text(
              name,
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "stock: $stockValue",
              style: AppStyles.greyTextStyle().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: kGreyShade5Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
