import 'package:flutter/material.dart';
import 'package:kheloprayagraj/homescreen/homescreen.dart';
import 'package:kheloprayagraj/users/fragments/notification_screen.dart';
import 'package:kheloprayagraj/users/fragments/dashboard_screen.dart';
import 'package:kheloprayagraj/users/fragments/profile_fragement_screen.dart';
import 'package:kheloprayagraj/users/userPreferences/current_user.dart';
import 'package:get/get.dart';

class DashboardOfFragments extends StatelessWidget {
  final CurrentUser _rememberCurrentUser = Get.put(CurrentUser());

  final List<Widget> _fragementScreens = [
    const MARCOS(),
    DashboardScreen(),
    ProfileFragementScreen(),
    NotificationScreen(),
  ];

  final List _navigationButtonsProperties = [
    {
      "active_icon": Icons.home,
      "non_active_icon": Icons.home_outlined,
      "label": "Home",
    },
    {
      "active_icon": Icons.card_membership,
      "non_active_icon": Icons.card_membership_outlined,
      "label": "Dashboard",
    },
    {
      "active_icon": Icons.person,
      "non_active_icon": Icons.person_2_outlined,
      "label": "Profile",
    },
    {
      "active_icon": Icons.notifications_active,
      "non_active_icon": Icons.notification_important,
      "label": "Notification",
    },
  ];

  final RxInt _indexNumber = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CurrentUser(),
      initState: (currentState) {
        _rememberCurrentUser.getUserInfo();
      },
      builder: (controller) {
        return Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Obx(
              () => _fragementScreens[_indexNumber.value],
            )),
            bottomNavigationBar: Obx(() => BottomNavigationBar(
                  currentIndex: _indexNumber.value,
                  onTap: (value) {
                    _indexNumber.value = value;
                  },
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white24,
                  items: List.generate(4, (index) {
                    var navBtnProperty = _navigationButtonsProperties[index];
                    return BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      icon: Icon(navBtnProperty["non_active_icon"]),
                      activeIcon: Icon(navBtnProperty["active_icon"]),
                      label: navBtnProperty['label'],
                    );
                  }),
                )));
      },
    );
  }
}
