import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neatewear/pages/Holder.dart';

class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  double _progress = 0.0; // progress variable for the circular progress bar

  void _checkCookieCode() {
    // Simulated process of checking for the cookie code
    Future.delayed(Duration(seconds: 2), () {
      // Assuming the cookie code is found
      bool isNewUser = false; // Set to true if the user is new

      setState(() {
        _progress = 1.0; // Set progress to complete
      });

      // Navigate based on the result
      if (isNewUser) {
        _navigateToLoginPage(); // Navigate to the login page for new users
      } else {
        _navigateToHolder(); // Navigate to the holder page for returning users
      }
    });
  }

  void _navigateToLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _navigateToHolder() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Holder()),
    );
  }

  @override
  void initState() {
    super.initState();
    _checkCookieCode(); // check for the cookie code when the page is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo at center

              // text below logo
              Text(
                'NeatWear',
                style: GoogleFonts.joan(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: .9,
                      fontSize: 80.0),
                ),
                textAlign: TextAlign.center,
              ),

              // text to user
              // this will be rapped in an IF statement, cause it has to be shown
              // only once, that is when the user opens the app for the first time
              // or also when their location has change
              Text(
                'Are we available in you location ? \n Let us know your city or zip code!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.grey[300]),
                ),
                textAlign: TextAlign.center,
              ),

              // circular progress bar, to keep the user a bit busy while the app runs some background functions
              // the circular progress babr on reaching the complter state willl navigate to the HolderPage where it will display the home

              CircularProgressIndicator(
                value: _progress,
              )

              // button to continue to app, two dots, one active for this page,
              // the other will take the user to the page where they can create
              // their accounts
              // GestureDetector(
              //   onTap: () => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => HomePage(),
              //       )),
              //   child: Container(
              //     // ignore: prefer_const_constructors
              //     decoration: BoxDecoration(
              //       color: Color.fromRGBO(21, 90, 78, 1),
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     padding: const EdgeInsets.all(25),
              //     child: const Center(
              //       child: Text(
              //         'Keep It Clean',
              //         style: TextStyle(
              //             color: Color.fromRGBO(255, 236, 179, 1),
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
