import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search here...',
          hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}


class SeacrchBarCustomer extends StatefulWidget {
  const SeacrchBarCustomer({super.key});

  @override
  State<SeacrchBarCustomer> createState() => _SeacrchBarCustomerState();
}

class _SeacrchBarCustomerState extends State<SeacrchBarCustomer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE0E0E0), width: 1.5),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search customer here...',
          hintStyle: GoogleFonts.poppins(color: const Color(0xff828282), fontSize: 14),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}