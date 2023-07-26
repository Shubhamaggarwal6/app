import 'package:mart/consts/consts.dart';

Widget ourbutton({onPress, color, textcolor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onPress,
      child: title!.text.color(textcolor).fontFamily(bold).make());
}
