import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  // TextEditingController searchbarController = TextEditingController();

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                // look for an alternative to this by next commit
                Icons.menu,
                color: Colors.blueGrey,
                size: 30,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[500],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // user profile
            Column(
              children: [
                DrawerHeader(
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.grey.shade500,
                    size: 63,
                  ),
                ),
                // creating quick divider
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Divider(
                //     color: Colors.grey[400],
                //   ),
                // ),

                // Options
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Text(
                      'Name',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: .8,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                //address
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Text(
                      'Address',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: .8,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            //edit

            // log out
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: .8,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

// thinking of adding a drawer to the app for side access
