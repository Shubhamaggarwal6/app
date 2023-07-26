import 'package:mart/consts/consts.dart';
import 'package:mart/consts/list.dart';
import 'package:mart/views/account_screen/components/details_cart.dart';
import 'package:mart/widgets_comman/bg_widget.dart';

class accountscreen extends StatelessWidget {
  const accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //edit  profile

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )),
            ),

            //profile section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "dummy"
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .size(16)
                          .make(),
                      "customermail"
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .size(16)
                          .make(),
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .size(16)
                        .make(),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailscard(
                    width: context.screenWidth / 3.4,
                    count: "00",
                    title: "in your cart"),
                detailscard(
                    width: context.screenWidth / 3.4,
                    count: "32",
                    title: "in your wishlist"),
                detailscard(
                    width: context.screenWidth / 3.4,
                    count: "675",
                    title: "your order"),
              ],
            ),
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Vx.black,
                      );
                    },
                    itemCount: profilebuttonlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading:
                            Image.asset(profilebuttonimg[index], width: 22),
                        title: profilebuttonlist[index]
                            .text
                            .color(darkFontGrey)
                            .fontFamily(bold)
                            .make(),
                      );
                    })
                .box
                .white
                .rounded
                .margin(EdgeInsets.all(12))
                .shadowSm
                .padding(const EdgeInsets.all(16))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
