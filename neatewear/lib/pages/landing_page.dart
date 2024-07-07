import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neatewear/pages/Holder.dart';
import 'package:neatewear/pages/LoginPage.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';


class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  // TODO: change progress bar to percentage bar for better UI and manipulation
  // TODO: create the signup.dart page and attach here

  double _progress = 0.0; // progress variable for the circular progress bar

  // ! This function will be studied later on this application development process
  Future<bool> connectToAPI() async {
  try {
    final response = await http.get(Uri.parse('Backend_API_ENDPOINT'));
    if (response.statusCode == 200) {
      // API call successful
      return true;
    } else {
      // API call failed
      print('API Error: ${response.statusCode}');
      return false;
    }
  } catch (e) {
    print('API Connection Error: $e');
    return false;
  }
}

// Editing this to work togethere with our API
  void _checkCookieCode() {
    // Simulated process of checking for the cookie code
    Future.delayed(Duration(seconds: 40), () {
      // Assuming the cookie code is found
      bool isNewUser = false; // Set to true if the user is new

      setState(() {
        _progress = 1.0; // Set progress to complete
      });

      // Navigate based on the result
      if (isNewUser) {
        _navigateToLoginPage(); // Navigate to the login page for new users
      } else {
        //_navigateToHolder(); // Navigate to the holder page for returning users
      }
    });
  }

  void _navigateToLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LogInForm()),
    );
  }

  // void _navigateToHolder() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Holder()),
  //   );
  // }

  @override
  void initState() {
    super.initState();
    _checkCookieCode(); // check for the cookie code when the page is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 253, 154, 6),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text 
              Text(
                'NeatWear',
                style: GoogleFonts.joan(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    letterSpacing: .9,
                    fontSize: 50.0,
                  ),
                ),
                textAlign: TextAlign.center,
              ),

              // text to user
              const Text(
                'Keep It Clean',
                style: TextStyle(
                    color: Color.fromRGBO(255, 236, 179, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              // lineat progress bar, to keep the user a bit busy while the app runs some background functions
              // the circular progress bar on reaching the complter state willl navigate to the HolderPage where it will display the home
              SizedBox(
                width: 250, // Adjust the width as needed
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearPercentIndicator(
                    // ! fix this and properly set the weight 
                    width: 228.0, 
                    lineHeight: 8.0,
                    percent: _progress,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.amber,
                    backgroundColor: Colors.grey[300],
                    center: Text(''), // Hide the percentage value
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
