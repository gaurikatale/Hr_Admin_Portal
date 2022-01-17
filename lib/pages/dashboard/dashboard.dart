import 'package:flutter/material.dart';
import 'package:hradminpannel/common/app_colors.dart';
import 'package:hradminpannel/common/responsive.dart';
import 'package:hradminpannel/pages/dashboard/widget/calender.dart';
import 'package:hradminpannel/pages/dashboard/widget/header.dart';
import 'package:hradminpannel/pages/dashboard/widget/notification_card.dart';
import 'package:hradminpannel/pages/dashboard/widget/profile_card.dart';
import 'package:hradminpannel/pages/dashboard/widget/recruitment_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          //Header of Dashboard
          Header(),
          Expanded(
              child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Notification_Card(),
                        SizedBox(height: 10),
                        if (ResponsiveApp.isMobile(context)) ...{
                          Calender(),
                          SizedBox(height: 10),
                        },
                        Recruitment_Data(),
                      ],
                    ),
                  ),
                ),
                if (!ResponsiveApp.isMobile(context))
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Calender(),
                        SizedBox(height: 20),
                        Profile_Card(),
                      ],
                    ),
                  )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
