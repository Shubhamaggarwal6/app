import 'package:mart/consts/consts.dart';

class cartscreen extends StatelessWidget {
  const cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "cart is emp"
          .text
          .color(darkFontGrey)
          .fontFamily(semibold)
          .size(16)
          .makeCentered(),
    );
  }
}
