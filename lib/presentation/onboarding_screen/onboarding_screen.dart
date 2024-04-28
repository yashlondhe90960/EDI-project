import 'package:flutter/material.dart';
import 'package:yash_s_application1/presentation/select_sport_screen/select_sport_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable
// import 'package:country_list_pick/country_list_pick.dart';
// import 'package:flutter_language_codes/flutter_language_codes.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "India", "United States of America", "China", "Brazil", "Pakistan",
    "Indonesia", "Bangladesh", "Russia", "Mexico", "Japan"
];

  List<String> dropdownItemList1 = ["Hindi", "English", "Marathi", "Bengali", "Telugu", "Tamil", "Gujarati",
    "Urdu", "Kannada", "Odia", "Punjabi", "Malayalam", "Sanskrit", "Assamese",
    "Maithili", "Sindhi", "Nepali", "Konkani", "Dogri", "Manipuri", "Bodo", "Kashmiri",
    "Santali"
];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              Text(
                "Welcome Onboard!",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 52.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 45.h,
                  right: 46.h,
                ),
                child: CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 23.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 7.v,
                      width: 9.h,
                    ),
                  ),
                  hintText: "Country",
                  items: dropdownItemList,
                ),
              ),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 45.h,
                  right: 46.h,
                ),
                child: CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 7.v,
                      width: 9.h,
                    ),
                  ),
                  hintText: "Language",
                  items: dropdownItemList1,
                ),
              ),
              SizedBox(height: 48.v),
              _buildRowNext(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGlobe,
        margin: EdgeInsets.fromLTRB(15.h, 5.v, 302.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowNext(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse13200x105,
                    height: 200.v,
                    width: 105.h,
                  ),
                  SizedBox(height: 20.v),
                  GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => SelectSportScreen()),
                  //   );
                  // },
                  child: CustomElevatedButton(
                    height: 50.v,
                    text: "Next",
                    margin: EdgeInsets.only(left: 51.h),
                    buttonStyle: CustomButtonStyles.fillErrorContainer,
                    buttonTextStyle:
                        CustomTextStyles.headlineSmallArialWhiteA700,
                    alignment: Alignment.centerRight,
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectSportScreen()),
                     );
                  },
                  
                  ),
                  ),
                  
                ],
              
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse15120x49,
            height: 120.v,
            width: 49.h,
            margin: EdgeInsets.only(top: 160.v),
          )
        ],
      ),
    );
  }
}
