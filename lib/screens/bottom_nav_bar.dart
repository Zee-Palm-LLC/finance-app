import 'package:financial_goal/data/constants.dart';
import 'package:flutter/material.dart';

import '../routes/page_routes.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  int ourindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBlackBackground,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kBlackBackground,
          unselectedItemColor: kWhitePrimary,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              ourindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                index: 0,
                selectedIndex: _selectedIndex,
                icon: Icons.home,
              ),

              //Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 1,
                icon: Icons.wallet_giftcard_rounded,
                index: ourindex,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 2,
                icon: Icons.burst_mode_outlined,
                index: ourindex,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavContainer(
                selectedIndex: 3,
                icon: Icons.settings_backup_restore,
                index: ourindex,
              ),
              label: '',
            ),
          ]),
    );
  }
}

class BottomNavContainer extends StatelessWidget {
  final int index;
  final IconData icon;
  const BottomNavContainer({
    Key? key,
    required int selectedIndex,
    required this.icon,
    required this.index,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _selectedIndex == index ? kWhitePrimary : Colors.transparent,
          shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon,
            color: _selectedIndex == index ? Colors.black : Colors.white),
      ),
    );
  }
}
