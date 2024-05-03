import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: Colors.white12,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Home',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color.fromARGB(235, 0, 0, 0),
                  letterSpacing: .9,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          leadingWidth: 100,
        ),
        Text(
          'HomePage',
        ),
      ],
    );
  }
}
