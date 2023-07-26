import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../widgets_comman/applogo_widgets.dart';
import '../../widgets_comman/bg_widget.dart';
import '../../widgets_comman/custom_textdfield.dart';
import '../../widgets_comman/our_button.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "join the $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                customtextfield(hint: namehint, title: name),
                customtextfield(hint: emailhint, title: email),
                customtextfield(hint: passwordhint, title: password),
                customtextfield(
                    hint: retypepasswordhint, title: retypepassword),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),

                Row(
                  children: [
                    Checkbox(
                        activeColor: Vx.black,
                        checkColor: whiteColor,
                        value: ischeck,
                        onChanged: (newValue) {
                          setState(() {});
                          ischeck = newValue;
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "i agree to the   ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: termsandcond,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ),
                        ),
                        TextSpan(
                          text: "   &   ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: PTIVACYPOLICY,
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourbutton(
                        color: ischeck == true ? redColor : lightGrey,
                        title: signup,
                        textcolor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 70)
                    .make(),
                10.heightBox,
                //wrapping into gesture detector of velocity x
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: alreadyhaveaccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redColor),
                  )
                ])).onTap(() {
                  Get.back();
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
