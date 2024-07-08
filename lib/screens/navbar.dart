import 'package:carpalizer/import/import.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        ControllScreen(),
        NotifScreen(),
        ProfileScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: kPrimaryWhiteColor,
          inactiveColorPrimary: Colors.grey,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.auto_graph,
            color: kPrimaryWhiteColor,
          ),
          inactiveIcon: const Icon(
            Icons.auto_graph,
            color: Colors.grey,
          ),
          title: ("Graph"),
          activeColorPrimary: kPrimaryWhiteColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.notifications),
          title: ("Notif"),
          activeColorPrimary: kPrimaryWhiteColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: kPrimaryWhiteColor,
          inactiveColorPrimary: Colors.grey,
        ),

      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 1);
    return PersistentTabView(
      context,
      screens:_buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: kPrimaryDarkColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style6,
    );
  }
}
