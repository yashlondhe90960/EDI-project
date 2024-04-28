import 'package:flutter/material.dart';
import 'package:yash_s_application1/presentation/sport_details_screen/sport_details_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/selectsport_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SelectSportScreen extends StatelessWidget {
  SelectSportScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    right: 12.h,
                  ),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search for a sport",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "Popular Sport",
                  style: CustomTextStyles.bodyLargeArialRoundedMTBold,
                ),
              ),
              SizedBox(height: 21.v),
              _buildSelectSport(context),
              SizedBox(height: 81.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse17,
                height: 200.v,
                width: 119.h,
              ),
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse16,
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
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnerror,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "Next",
          onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SportDetailsScreen()),
                     );
                  },
          margin: EdgeInsets.fromLTRB(14.h, 15.v, 14.h, 17.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSelectSport(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 21.h,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 54.v,
            crossAxisCount: 3,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return SelectsportItemWidget();
          },
        ),
      ),
    );
  }
}
