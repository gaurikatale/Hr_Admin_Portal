import 'package:flutter/material.dart';
import 'package:hradminpannel/common/app_colors.dart';
import 'package:hradminpannel/common/responsive.dart';

class Recruitment_Data extends StatelessWidget {
  const Recruitment_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recruitment Progress',
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'View All',
                  style: TextStyle(
                      color: AppColor.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              //main information title
              TableRow(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                  children: [
                    tableHeader(text: 'Full Name'),
                    if (!ResponsiveApp.isMobile(context))
                      tableHeader(text: 'Designation'),
                    tableHeader(text: 'Status'),
                    if (!ResponsiveApp.isMobile(context)) tableHeader(text: ''),
                  ]),
              //information of table
              tableRow(
                context,
                name: "Mary G Lolus",
                color: Colors.blue,
                image: "assets/user1.jpg",
                designation: "Project Manager",
                status: "Practical Round",
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                color: Colors.blue,
                image: "assets/user2.jpg",
                designation: "UI/UX Designer",
                status: "Practical Round",
              ),
              tableRow(
                context,
                name: "Nell Brian",
                color: Colors.green,
                image: "assets/user3.jpg",
                designation: "React Developer",
                status: "Final Round",
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                color: Colors.yellow,
                image: "assets/user2.jpg",
                designation: "UI/UX Designer",
                status: "HR Round",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Showing 4 out of 4 Results'),
                Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

TableRow tableRow(context, {name, image, designation, status, color}) {
  return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  image,
                  width: 30,
                ),
              ),
              SizedBox(width: 10),
              Text(name),
            ],
          ),
        ),
        //designation
        if (!ResponsiveApp.isMobile(context)) Text(designation),
        //status

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(status),
          ],
        ),
        if (!ResponsiveApp.isMobile(context))
          Image.asset(
            'assets/more.png',
            color: Colors.grey,
            height: 30,
          )
      ]);
}

Widget tableHeader({text}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.black,
      ),
    ),
  );
}
