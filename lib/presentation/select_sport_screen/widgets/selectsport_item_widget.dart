import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class SelectsportItemWidget extends StatelessWidget {
  const SelectsportItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 53.v,
        width: 89.h,
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgBxFootball,
          height: 30.v,
          width: 33.h,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
