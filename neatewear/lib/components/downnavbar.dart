import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FirstButton extends StatelessWidget {
  void Function(int)? onTabChange;
  FirstButton({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          gap: 8,
          color: Color.fromARGB(255, 189, 189, 189),
          activeColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Color.fromARGB(255, 230, 138, 2),
          mainAxisAlignment: MainAxisAlignment.center,
          //tabBorderRadius: 5,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              hoverColor: Colors.blueGrey,
            ),
            GButton(
              icon: Icons.local_laundry_service_outlined,
              text: 'Luandry',
              hoverColor: Colors.blueGrey,
            ),
            GButton(
              icon: Icons.qr_code_scanner_outlined,
              text: 'Scan',
              hoverColor: Colors.blueGrey,
            )
          ],
        ));
  }
}




// written by JAPTECH CORP