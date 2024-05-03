import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neatewear/pages/Holder.dart';

class landing_page extends StatelessWidget {
  const landing_page({super.key});

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
                'CLEAN',
                style: GoogleFonts.joan(
                  textStyle:  const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: .9,
                      fontSize: 80.0),
                ),
                // (
                // textStyle: TextStyle(
                //   color: Colors.white,
                //   letterspacing : 5,
                //   )
                // ),
                textAlign: TextAlign.center,
              ),

              // text to user
              Text(
                'Are we available in you location ? \n Let us know your city or zip code!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.grey[300]),
                ),
              ),

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
