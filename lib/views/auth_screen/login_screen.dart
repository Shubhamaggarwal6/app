import 'package:get/get.dart';
import 'package:mart/consts/consts.dart';
import 'package:mart/consts/list.dart';
import 'package:mart/views/auth_screen/signupscreen.dart';
import 'package:mart/views/home_screen/home.dart';
import 'package:mart/widgets_comman/applogo_widgets.dart';
import 'package:mart/widgets_comman/bg_widget.dart';
import 'package:mart/widgets_comman/custom_textdfield.dart';
import 'package:mart/widgets_comman/our_button.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

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
              "log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customtextfield(hint: emailhint, title: email),
                  customtextfield(hint: passwordhint, title: password),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetpass.text.make())),
                  5.heightBox,
                  // ourbutton().box.width(context.screenWidth - 50).make(),
                  ourbutton(
                      color: redColor,
                      title: login,
                      textcolor: whiteColor,
                      onPress: () {
                        Get.to(() => const Home());
                      }).box.width(context.screenWidth - 70).make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadow
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourbutton(
                  color: redColor,
                  title: signup,
                  textcolor: lightGolden,
                  onPress: () {
                    Get.to(() => const signupscreen());
                  }).box.width(context.screenWidth - 70).make(),
              10.heightBox,
              loginwith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(
                        socialIconlist[index],
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
