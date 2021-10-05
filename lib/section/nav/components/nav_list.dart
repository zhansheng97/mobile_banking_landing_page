import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/section/nav/components/nav_item.dart';

class NavList extends StatefulWidget {
  const NavList({
    Key key,
  }) : super(key: key);

  @override
  _NavListState createState() => _NavListState();
}

class _NavListState extends State<NavList> {
  final List<String> navItems = ["Business", "Pricing", "Features", "About"];
  int currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          navItems.length,
          (index) => NavItem(
            title: navItems[index],
            onTap: () {
              changeIndex(index);
            },
            isSelected: currentIndex == index,
          ),
        ),
      ],
    );
  }
}
