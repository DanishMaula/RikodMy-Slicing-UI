import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rikodmy/widget/others/search_bar.dart';
import 'package:rikodmy/ui/home/tabbar_menu.dart';

import '../../../utils/utils.dart';

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
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/logo_udc.png'),
                        ),
                        const SizedBox(width: 5),
                        Text('IBIJUGIL COMPANY',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff333333),
                                fontSize: 16)),
                      ],
                    ),

                    // cart button
                    MaterialButton(
                      color: const Color(0xff2360AD),
                      minWidth: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('RM 322.52', style: cartButton),
                      onPressed: () {
                        Navigator.pushNamed(context, '/cartScreen');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const SearchBar(),
                const SizedBox(height: 20),
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                const TabBarMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
