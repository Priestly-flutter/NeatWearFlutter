import 'package:flutter/material.dart';
import 'package:neatewear/components/downnavbar.dart';
import 'package:neatewear/pages/home_page.dart';
import 'package:neatewear/pages/order_page.dart';
import 'package:neatewear/pages/scan_page.dart';

class Holder extends StatefulWidget {
  const Holder({super.key});

  State<Holder> createState() => _HolderState();
}

class _HolderState extends State<Holder> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update the valu of our selected index
  // when the user taps on hte bottom bar
  // 0 for the home
  // 1 for the order
  // 2 for the scan
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // home page
    const HomePage(),

    // order page
    const OrderPage(),

    // scan page
    const ScanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: FirstButton(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
