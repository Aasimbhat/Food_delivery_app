import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimenstions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //bg image
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food0.png"))),
                )),
            //icons widget
            Positioned(
                top: Dimensions.height45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios_new),
                    AppIcon(icon: Icons.shopping_cart_outlined),
                  ],
                )),
            //intro to food
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularFoodImgSize - 20,
                child: Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppColumn(
                          text: "Chinese Side",
                        ),
                        SizedBox(height: Dimensions.height20),
                        BigText(text: "Introduce"),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        //expandable widget

                        Expanded(
                            child: SingleChildScrollView(
                                child: ExpandableTextWidget(
                                    text:
                                        "Chinese cuisine encompasses the numerous cuisines originating from China, as well as overseas cuisines created by the Chinese diaspora. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide as overseas cuisines created by the Chinese diaspora. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide")))
                      ],
                    )))
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          height: Dimensions.bottomHeightbar,
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.width20 * 2),
                topRight: Radius.circular(Dimensions.width20 * 2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    BigText(text: "0"),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor),
                child: BigText(
                  text: "\$10 | Add to cart ",
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
        );
  }
}
