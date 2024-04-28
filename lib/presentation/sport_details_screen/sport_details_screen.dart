import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/chipviewbeginner_item_widget.dart';

class SportDetailsScreen extends StatelessWidget {
  const SportDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 38.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBxFootball,
                      height: 30.v,
                      width: 33.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 4.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "Football",
                        style: CustomTextStyles.bodyLargeArialRoundedMTBold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 73.v),
              _buildChipViewBeginner(context),
              SizedBox(height: 81.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse17200x119,
                height: 200.v,
                width: 119.h,
              ),
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse16120x60,
                height: 120.v,
                width: 60.h,
                alignment: Alignment.centerRight,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      leadingWidth: 190.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnerror,
        margin: EdgeInsets.only(right: 166.h),
      ),
      title: AppbarSubtitle(
        text: "How good are you at these?",
        margin: EdgeInsets.only(
          left: 23.h,
          top: 4.v,
          bottom: 2.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "Next",
          margin: EdgeInsets.fromLTRB(14.h, 15.v, 14.h, 17.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildChipViewBeginner(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 20.v,
        spacing: 20.h,
        children:
            List<Widget>.generate(6, (index) => ChipviewbeginnerItemWidget()),
      ),
    );
  }
}
