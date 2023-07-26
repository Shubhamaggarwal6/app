import 'package:mart/consts/consts.dart';
import 'package:mart/consts/list.dart';
import 'package:mart/views/home_screen/components/featured_button.dart';
import 'package:mart/widgets_comman/home_button.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenWidth,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.red,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          //swiper brand
          VxSwiper.builder(
              aspectRatio: 25 / 9,
              autoPlay: true,
              height: 200,
              enlargeCenterPage: true,
              itemCount: sliderlist.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  sliderlist[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              }),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      2,
                      (index) => homebuttons(
                        height: context.screenHeight * 0.15,
                        width: context.screenHeight / 4.5,
                        icon: index == 0 ? icTodaysDeal : icFlashDeal,
                        title: index == 0 ? todaydeal : flashsale,
                      ),
                    ),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 50,
                      enlargeCenterPage: true,
                      itemCount: sliderlist.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondsliderlist[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  15.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => homebuttons(
                        height: context.screenHeight * 0.15,
                        width: context.screenHeight / 6.5,
                        icon: index == 0
                            ? icTopCategories
                            : index == 1
                                ? icBrands
                                : icTopSeller,
                        title: index == 0
                            ? topcategories
                            : index == 1
                                ? brand
                                : topseller,
                      ),
                    ),
                  ),
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredcategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredbutton(
                                      icon: featureimages1[index],
                                      title: featuredtitle1[index]),
                                  10.heightBox,
                                  featuredbutton(
                                      icon: featureimages2[index],
                                      title: featuredtitle2[index]),
                                ],
                              )),
                    ),
                  ),
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: redColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredproduct.text.white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "laptop 4GBB/64gb"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "10000"
                                              .text
                                              .color(Colors.black)
                                              .fontFamily(semibold)
                                              .size(16)
                                              .make(),
                                          10.heightBox
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .roundedSM
                                          .padding(const EdgeInsets.all(8))
                                          .make())),
                        ),
                      ],
                    ),
                  ),

                  // third swiper
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 100,
                      enlargeCenterPage: true,
                      itemCount: sliderlist.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondsliderlist[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  // all product section
                  20.heightBox,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            10.heightBox,
                            "laptop 4GBB/64gb"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "10000"
                                .text
                                .color(Colors.black)
                                .fontFamily(semibold)
                                .size(16)
                                .make(),
                            10.heightBox
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            .padding(const EdgeInsets.all(12))
                            .make();
                      }),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
