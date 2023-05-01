import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:medical_app/src/core/utils/app_helpers.dart';
import 'package:medical_app/src/features/home/presentaion/pages/home_page.dart';
import 'package:medical_app/src/features/menu/presentation/pages/menu_page.dart';
import 'package:medical_app/src/features/reports/presentation/pages/reports_page.dart';
import 'package:medical_app/src/features/results/presentation/pages/results_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const ResultsPage(),
    const ReportsPage(),
  ];

  late int _selectedIndex = 0;
  late int _previousIndex = 0;

  void _onItemTapped(int index) {
    if (index == 3) {
      AppHelpers.showCustomModalBottomSheet(
        context: context,
        modal: const MenuPage(),
        isDarkMode: true,
      );
    }
    setState(() {
      _previousIndex = _selectedIndex - _previousIndex;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_selectedIndex == 3? _widgetOptions[0]:_widgetOptions[_selectedIndex] ,
      bottomNavigationBar: SizedBox(
        // decoration: const BoxDecoration(boxShadow: [
        //   BoxShadow(
        //       color: Color(0xFF252525), blurRadius: 20, offset: Offset(0, 0))
        // ]),
        height: 85.h,
        child: BottomNavigationBar(
          backgroundColor: AppColors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          items: [
            _barItem(index: 0),
            _barItem(index: 1),
            _barItem(index: 2),
            _barItem(index: 3),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  BottomNavigationBarItem _barItem({
    required int index,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Image.asset(
        AppAssets.bottomNavigationItems.values.elementAt(index)['active'],
        height: 20.r,
        width: 20.r,
        color: AppColors.black,
      ),
      icon:  Image.asset(
        AppAssets.bottomNavigationItems.values.elementAt(index)['inactive'],
        height: 20.r,
        width: 20.r,
        color: AppColors.black,
      ),
      label: AppAssets.bottomNavigationItems.keys.elementAt(index),
    );
  }
}
