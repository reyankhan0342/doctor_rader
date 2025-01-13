// ignore_for_file: prefer_const_constructors

import 'package:doc_radar_app/core/view/help/help_center.dart';
import 'package:doc_radar_app/core/view/priavcy/priacy.dart';
import 'package:doc_radar_app/core/view/setting/setting_view.dart';
import 'package:doc_radar_app/core/view/your_profile/your_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            width: 130.w,
          ),
          Text(
            'Profile',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
          )
        ],
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE4EDF8),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                shape: BoxShape.circle),
                            child: Icon(
                              size: 18,
                              Icons.edit,
                              color: Colors.black,
                            )))
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Eisha Waqas',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => YourProfile()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Your profile',
                            style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.payment,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Payment Methods',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingView()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HelpCenter()));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outline_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Help Center',
                            style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: screenWidth,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Priacy()));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 13.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: screenWidth,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Log out',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 13.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: screenWidth,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
