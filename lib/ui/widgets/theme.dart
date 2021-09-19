import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle primaryText = GoogleFonts.poppins(
    color: Color(0xff363853), fontSize: 18.sp, fontWeight: FontWeight.w600);

TextStyle secondaryText = GoogleFonts.poppins(
    color: Color(0xffCBCBCB), fontSize: 10.sp, fontWeight: FontWeight.w500);

InputDecoration primaryInput = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(71),
      borderSide: BorderSide.none,
    ),
    fillColor: Color(0xffF3F3F3),
    filled: true,
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(71),
        borderSide: BorderSide(
          color: Color(0xff84A9FF),
        )),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(71),
        borderSide: BorderSide(
          color: Colors.redAccent,
        )));
