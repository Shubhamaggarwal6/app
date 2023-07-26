import 'package:get/get.dart';
import 'package:mart/consts/consts.dart';
import 'package:mart/views/category/item/item_details.dart';
import 'package:mart/widgets_comman/bg_widget.dart';

class categorydetails extends StatelessWidget {
  final String? title;
  const categorydetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
          body: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        6,
                        (index) => "baby clothing"
                            .text
                            .size(12)
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .makeCentered()
                            .box
                            .white
                            .rounded
                            .size(150, 60)
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .make()),
                  ),
                ),
                20.heightBox,
                Expanded(
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 250,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                width: 200,
                                height: 150,
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
                              .margin(const EdgeInsets.symmetric(horizontal: 4))
                              .roundedSM
                              .outerShadowSm
                              .padding(const EdgeInsets.all(12))
                              .make()
                              .onTap(() {
                            Get.to(() => itemdetails(title: "dummy item"));
                          });
                        }))
              ],
            ),
          )),
    );
  }
}
