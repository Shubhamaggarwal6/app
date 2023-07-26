import 'package:mart/consts/consts.dart';

Widget detailscard({width, String? count, String? title}) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    count!.text
        .color(darkFontGrey)
        .size(16)
        .fontFamily(semibold)
        .size(16)
        .make(),
    5.heightBox,
    title!.text.color(darkFontGrey).fontFamily(semibold).size(16).make(),
  ])
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(8))
      .make();
}
