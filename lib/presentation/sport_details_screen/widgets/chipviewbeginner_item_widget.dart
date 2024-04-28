import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ChipviewbeginnerItemWidget extends StatelessWidget {
  const ChipviewbeginnerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Beginner",
        style: TextStyle(
          color: theme.colorScheme.onError.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Arial Rounded MT Bold',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray200,
      selectedColor: appTheme.gray200,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
