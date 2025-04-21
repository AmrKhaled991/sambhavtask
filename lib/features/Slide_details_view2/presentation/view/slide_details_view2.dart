import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';
import 'package:sambhavtask/features/Slide_details_view2/presentation/view/widgets/all_product_bar.dart';
import 'package:sambhavtask/features/Slide_details_view2/presentation/view/widgets/fav_and_love.dart';
import 'package:sambhavtask/features/Slide_details_view2/presentation/view/widgets/icon_and_info.dart';
import 'package:sambhavtask/features/Slide_details_view2/presentation/view/widgets/rating_location_time_section.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/items_tab.dart';
import 'package:sambhavtask/features/widgets/filter_selector.dart';
import 'package:sambhavtask/features/widgets/green_back_icon.dart';

class SlideDetailsView2 extends StatelessWidget {
  const SlideDetailsView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  pinned: true,
                  expandedHeight: 300,
                  collapsedHeight: 70,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          Assets
                              .imagesIPhoneSlide, // <-- replace with your actual image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    centerTitle: true,
                    titlePadding: const EdgeInsets.all(0),
                    title: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(flex: 6, child: IconAndInfo()),
                          Expanded(flex: 2, child: FavAndLove()),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: RatingLocationTimeSection()),
                SliverAppBar(
                  pinned: true,
                  leading: SizedBox(),
                  backgroundColor: Colors.white,
                  toolbarHeight: 120,
                  expandedHeight: 120,
                  foregroundColor: Colors.black,
                  shadowColor: Colors.black38,
                  surfaceTintColor: Colors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: AllProductBar(),
                  ),
                ),
                SliverFillRemaining(child: AllProductsList(scrollable: false)),
              ],
            ),
            Positioned(top: 15, left: 10, child: GreenBackIcon()),
          ],
        ),
      ),
    );
  }
}
