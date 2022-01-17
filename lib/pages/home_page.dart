import 'package:flutter/material.dart';
import 'package:hradminpannel/common/app_colors.dart';
import 'package:hradminpannel/common/responsive.dart';
import 'package:hradminpannel/controllers/menu_controller.dart';
import 'package:hradminpannel/pages/dashboard/dashboard.dart';
import 'package:hradminpannel/pages/widget/side_bar_menu.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //side Nevigation item
          if (ResponsiveApp.isDesktop(context)) Expanded(child: SideBar()),
          //main body part

          Expanded(flex: 4, child: Dashboard()),
        ],
      )),
    );
  }
}
