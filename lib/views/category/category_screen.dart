import 'package:get/get.dart';
import 'package:mart/consts/consts.dart';
import 'package:mart/consts/list.dart';
import 'package:mart/views/category/category_details.dart';
import 'package:mart/widgets_comman/bg_widget.dart';

class categoryscreen extends StatelessWidget {
  const categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: Category.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryimg[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  8.heightBox,
                  categorylist[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => categorydetails(title: categorylist[index]));
              });
            }),
      ),
    ));
  }
}
