import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikodmy/utils/utils.dart';
import 'package:rikodmy/widget/others/custom_bg.dart';
import 'package:rikodmy/widget/others/nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2360AD),
      body: CustomPaint(
        painter: CustomBg(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/rikodmy.png',
                    width: 130,
                    height: 27,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Welcome back!', style: titleWelcome),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Email', style: titleLoginEmail),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: titleLoginEmail,
                        // ignore: prefer_const_constructors
                        focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Password', style: titleLoginEmail),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: titleLoginEmail,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        
                        // ignore: prefer_const_constructors
                        focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  const SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const NavBar()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text('Login', style: loginButton),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      
                      '"if you forgot you password please contact your\n admin company to change password immediately"',
                      style: italicInfo,
                    ),
                  ),
                  const SizedBox(height: 70),
                  Center(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                         Text('Before you can login',
                            style: GoogleFonts.poppins(
                              color: Colors.yellow,
                              decoration: TextDecoration.underline,
                            )
                                ),
                        Text.rich(
                          TextSpan(
                            text: 'You must',
                            style: GoogleFonts.poppins(
                                color: Colors.yellow,
                                decoration: TextDecoration.underline),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: ' REGISTER',
                                style: GoogleFonts.poppins(
                                    color: Colors.yellow,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' your company first',
                                style: GoogleFonts.poppins(
                                    color: Colors.yellow,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(child: Text('Version 2.0.0', style: version)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
