import 'package:flutter/material.dart';
import 'package:daniel_ung_s_application1/core/app_export.dart';
import 'package:daniel_ung_s_application1/widgets/custom_icon_button.dart';

class HingedScreen extends StatelessWidget {
  const HingedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 110.h,
                            vertical: 53.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder195,
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup1,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "Purrfect Match",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector16,
                        height: 471.v,
                        width: 199.h,
                        radius: BorderRadius.circular(
                          99.h,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 34.h,
                            top: 131.v,
                            right: 26.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 17.v,
                          ),
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder25,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPicture,
                                height: 353.v,
                                width: 294.h,
                                radius: BorderRadius.circular(
                                  25.h,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "El Gato",
                                style: theme.textTheme.displaySmall,
                              ),
                              SizedBox(height: 1.v),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "Male",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "Munchkin",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "Mackeral Tabby",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              SizedBox(height: 10.v),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildHingedRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHingedRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 647.v),
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder99,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup3,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 134.v,
                bottom: 5.v,
              ),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                ),
              ),
            ),
            Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              margin: EdgeInsets.only(top: 129.v),
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCat1,
                height: 50.v,
                width: 45.h,
                radius: BorderRadius.only(
                  topLeft: Radius.circular(23.h),
                  topRight: Radius.circular(22.h),
                  bottomLeft: Radius.circular(23.h),
                  bottomRight: Radius.circular(23.h),
                ),
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 133.v,
                bottom: 5.v,
              ),
              child: CustomIconButton(
                height: 41.adaptSize,
                width: 41.adaptSize,
                padding: EdgeInsets.all(3.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
