import 'package:flutter/material.dart';
import 'package:uxe/components/sidebar_row.dart';
import 'package:uxe/constants.dart';
import 'package:uxe/models/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21.0,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Luna Freya",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "License ends on 28 feb, 2020",
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(sidebarItem[0]),
            SizedBox(height: 32),
            SidebarRow(sidebarItem[1]),
            SizedBox(height: 32),
            SidebarRow(sidebarItem[2]),
            SizedBox(height: 32),
            SidebarRow(sidebarItem[3]),
            SizedBox(height: 32),
            Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17.0,
                ),
                SizedBox(width: 12),
                Text(
                  'Logout',
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
