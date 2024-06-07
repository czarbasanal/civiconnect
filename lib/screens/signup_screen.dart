import 'package:civiconnect/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/fullLogo.png',
                  height: screenHeight * 0.1,
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              Text(
                'SIGN UP:',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Font size
                  color: Color(0xFFFF3C00), // Font color
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/email.png',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.05,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        'Email',
                        style: TextStyle(color: Color(0xFFFF3C00)),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFFFF3C00)),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/phone.png',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.05,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        'Phone Number',
                        style: TextStyle(color: Color(0xFFFF3C00)),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFFFF3C00)),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/lock.png',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.05,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        'Password',
                        style: TextStyle(color: Color(0xFFFF3C00)),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFFFF3C00)),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/lock.png',
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.05,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        'Confirm Password',
                        style: TextStyle(color: Color(0xFFFF3C00)),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFF3C00),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFFFF3C00)),
              ),
              SizedBox(height: screenHeight * 0.05),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                label: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF3C00),
                  minimumSize: Size(screenWidth * 0.1, screenHeight * 0.06),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Color(0xFFFF3C00),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              ElevatedButton.icon(
                onPressed: () {
                  // Sign up with Google logic
                },
                icon: Image.asset(
                  'assets/icons/google.png',
                  height: screenHeight * 0.04,
                ),
                label: Text(
                  'Sign Up with Google',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Color(0xFFFF3C00),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(screenWidth * 0.1, screenHeight * 0.06),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: Color(0xFFFF3C00),
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.006),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'already have an account? Sign in here',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Color(0xFFFF3C00),
                    ),
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
