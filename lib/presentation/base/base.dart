import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zealth_assignment/presentation/base/symptomps/symptomps.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageController _pagecontroller = PageController();

  int pageIndex = 0;

  String getTitle() {
    if (pageIndex == 0) {
      return "Home";
    } else if (pageIndex == 1) {
      return "Symptoms";
    } else if (pageIndex == 2) {
      return "Medication";
    } else {
      return "Reports";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/icons/drawer.svg',
            height: 18,
            width: 18,
            color: Kolors.fontColor,
          ),
        ),
        title: Text(
          getTitle(),
          style: TextStyle(),
        ),
      ),
      body: PageView(
        controller: _pagecontroller,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          const SymptompsPage(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: onTap,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 24,
              width: 24,
              color: Kolors.fontColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 24,
              width: 24,
              color: Kolors.pinkColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/symptoms.svg',
              height: 24,
              width: 24,
              color: Kolors.pinkColor,
            ),
            icon: SvgPicture.asset(
              'assets/icons/symptoms.svg',
              height: 24,
              width: 24,
              color: Kolors.fontColor,
            ),
            label: 'Symptoms',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/medication.svg',
              height: 24,
              width: 24,
              color: Kolors.pinkColor,
            ),
            icon: SvgPicture.asset(
              'assets/icons/medication.svg',
              height: 24,
              width: 24,
            ),
            label: 'Medication',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/reports.svg',
              height: 24,
              width: 24,
              color: Kolors.pinkColor,
            ),
            icon: SvgPicture.asset(
              'assets/icons/reports.svg',
              height: 24,
              width: 24,
            ),
            label: 'Reports',
          ),
        ],
      ),
    );
  }

  void onTap(int pageIndex) {
    _pagecontroller.animateToPage(pageIndex,
        duration: const Duration(microseconds: 200), curve: Curves.linear);
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }
}
