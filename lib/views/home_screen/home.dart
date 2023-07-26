import 'package:get/get.dart';
import 'package:mart/consts/consts.dart';
import 'package:mart/controller/home_controller.dart';
import 'package:mart/views/account_screen/account_screen.dart';
import 'package:mart/views/cart_screen/cart_screen.dart';
import 'package:mart/views/category/category_screen.dart';
import 'package:mart/views/home_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homecontroller());
    var navbaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: Category),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account)
    ];
    var navbody = [
      const homescreen(),
      const categoryscreen(),
      const cartscreen(),
      const accountscreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navbody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbaritem,
          onTap: (Value) {
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
