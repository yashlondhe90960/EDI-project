import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yash_s_application1/presentation/login_page_screen/login_page_screen.dart';
import '../../core/app_export.dart';
// import 'login_page_screen\login_page_screen.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CarouselOneScreen extends StatelessWidget {
  const CarouselOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.v),
              _buildStackView(context),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 120.v,
                  width: 285.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse15,
                        height: 120.v,
                        width: 72.h,
                        alignment: Alignment.centerRight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 228.h,
                          margin: EdgeInsets.only(top: 20.v),
                          child: Text(
                            "The community for sports players",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPageScreen(),
                    ),
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.blue, // You can customize this as needed
                    fontSize: 16.0,
                ),
                )
              ),
   
              
              SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 3.98,
                    activeDotColor: theme.colorScheme.onSecondaryContainer,
                    dotColor: appTheme.gray500,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
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
      leadingWidth: 58.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGlobe,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 5.v,
          bottom: 6.v,
        ),
      ),
      actions: [
        Container(
          height: 22.v,
          width: 45.h,
          margin: EdgeInsets.fromLTRB(20.h, 17.v, 20.h, 16.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 1.v,
                    right: 17.h,
                  ),
                  child: Text(
                    "skip",
                    style: CustomTextStyles.bodyMediumPoppinsOnPrimaryContainer,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 25.h,
                  bottom: 2.v,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 358.v,
      width: 348.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 284.adaptSize,
              width: 284.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  142.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 283.adaptSize,
              width: 283.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
              decoration: BoxDecoration(
                color: appTheme.gray200,
                borderRadius: BorderRadius.circular(
                  141.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse13,
            height: 200.v,
            width: 170.h,
            alignment: Alignment.bottomLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFb7f338e8a6e6f8,
            height: 320.v,
            width: 334.h,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
