import 'package:flutter/material.dart';
import 'package:yash_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 81.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "SportsVoot",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  _buildEmail(context),
                  SizedBox(height: 29.v),
                  _buildStacksignin(context),
                  SizedBox(height: 2.v),
                  _buildStacksignin1(context),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 61.h,
        right: 36.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "     ENTER YOUR EMAIL",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInGoogle(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => OnboardingScreen()),
    //     );
    //   },
    return CustomElevatedButton(
      width: 279.h,
      text: "SIGN IN GOOGLE",
      margin: EdgeInsets.only(bottom: 21.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 19.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgDevicongoogle,
          height: 20.v,
          width: 21.h,
        ),
      ),
      alignment: Alignment.bottomRight,
      onPressed: (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      } ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomTextFormField(
        width: 263.h,
        controller: passwordController,
        hintText: "     ENTER PASSWORD",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        alignment: Alignment.topRight,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 27.h,
          vertical: 14.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStacksignin(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 234.v,
        width: 332.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse13200x106,
              height: 200.v,
              width: 106.h,
              alignment: Alignment.bottomLeft,
            ),
            _buildSignInGoogle(context),
            _buildPassword(context),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 72.v,
                  right: 80.h,
                ),
                child: Text(
                  "FORGOT PASSWORD?",
                  style: CustomTextStyles.bodyMediumActor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInFacebook(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => OnboardingScreen()),
    //     );
    //   },
      return CustomElevatedButton(
        width: 279.h,
        text: "  SIGN IN FACEBOOK",
        leftIcon: Container(
          margin: EdgeInsets.only(right: 13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 30.v,
            width: 35.h,
          ),
        ),
        alignment: Alignment.topLeft,
      onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    },
  );
}

  /// Section Widget
  Widget _buildStacksignin1(BuildContext context) {
    return SizedBox(
      height: 167.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse15120x60,
            height: 120.v,
            width: 60.h,
            alignment: Alignment.bottomRight,
          ),
          _buildSignInFacebook(context)
        ],
      ),
    );
  }
}
