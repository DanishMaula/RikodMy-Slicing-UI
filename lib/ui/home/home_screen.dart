import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikodmy/widget/search_bar.dart';
import 'package:rikodmy/widget/tabbar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:  AssetImage('assets/images/logo_udc.png'),
                  ),
                  const SizedBox(width: 10),
                  Text('IBUJUGIL COMPANY',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16
                  )),     
                ],
              ),
              const SizedBox(height: 10),
               const SearchBar(),
               const SizedBox(height: 20),
               Text('Categories',
               style: GoogleFonts.poppins(
                color: const Color(0xff333333),
               ),),
               const SizedBox(height: 5),
               const TabBarMenu(),
               
            ],
          ),
        ),
      ),
    );
  }
}