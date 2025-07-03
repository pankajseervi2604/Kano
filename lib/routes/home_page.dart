import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kano/components/routine_card.dart';
import 'package:kano/components/work_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 15.r),
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // PROFILE INFORMATION
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/source images/demo_avatars.jpg",
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Welcome Back,",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  Text(
                                    "Pankaj Seervi",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // NOTIFICATION AND MENU
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: FaIcon(FontAwesomeIcons.bell, size: 20),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.menu, size: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    // SEARCH BOX
                    Padding(
                      padding: EdgeInsets.all(5.r),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Iconsax.search_normal_14, size: 18),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    // ROUTINES
                    WorkTitle(title: "Routines"),
                    SizedBox(height: 20.h),
                    // ROUTINE CARD
                    Row(
                      children: [
                        RoutineCard(),
                        SizedBox(width: 20.w),
                        RoutineCard(),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    // MYTASK
                    WorkTitle(title: "My Task"),
                  ],
                ),
              ),
              // TASK DATA
              //todo diaplay task data here
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                height: 400.h,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(255, 134, 5, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        // backgroundColor: Colors.white,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: "Routine",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.list),
            label: "Task",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
