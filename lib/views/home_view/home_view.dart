import "package:dummy_youtube/views/home_view/widgets/bottom_navigation.dart";
import "package:dummy_youtube/views/home_view/widgets/custom_drawer.dart";
import "package:dummy_youtube/views/home_view/widgets/home_app_bar.dart";
import "package:flutter/material.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: homeAppBar(context),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
