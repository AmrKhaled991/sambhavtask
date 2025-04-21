import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/helpers/context.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';
import 'package:sambhavtask/features/Slide_details_view1/presentation/view/widgets/info_section.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/category_sote_list.dart';
import 'package:sambhavtask/features/widgets/green_back_icon.dart';

class SlideDetailsView1 extends StatelessWidget {
  const SlideDetailsView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              // Background image
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  width: double.infinity,
                  height: context.screenHeight * 0.2,
                  child: Image.asset(
                    Assets
                        .imagesIPhoneSlide, // <-- replace with your actual image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Overlay content
              Positioned(
                left: 16,
                top: 20,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GreenBackIcon(),
                  ],
                ),
              ),
            ],
          ),
          // You can continue adding other widgets here if needed
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: infoSection(),
          ),
          Expanded(child: CategoryStoreList()),
        ],
      ),
    );
  }
}
