import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/screens/dashboard/pages/home.dart';

import 'pages/budget.dart';
import 'pages/payments.dart';
import 'pages/profile.dart';
import 'pages/savings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const BudgetPage(),
    const SavingsPage(),
    const PaymentsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: monieWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
          boxShadow: [
            BoxShadow(
              color: mainTextColor.withOpacity(0.2),
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
          child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              elevation: 10,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: mainTextColor,
              unselectedItemColor: lightTextColor,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/home.svg'),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/list.svg'),
                    label: 'Budget'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/savings.svg'),
                    label: 'Savings'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/naira-card.svg'),
                    label: 'Payments'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/profile.svg'),
                    label: 'Profile'),
              ]),
        ),
      ),
    );
  }
}
