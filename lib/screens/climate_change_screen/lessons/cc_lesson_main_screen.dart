import 'package:flutter/material.dart';

import 'cc_lesson_1.dart';
import 'cc_lesson_2.dart';
import 'cc_lesson_3.dart';

class CcLessonMainScreen extends StatefulWidget {
  const CcLessonMainScreen({super.key});

  @override
  State<CcLessonMainScreen> createState() => _CcLessonMainScreenState();
}

class _CcLessonMainScreenState extends State<CcLessonMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFFFF7A00),
        title: const Text(
          'មេរៀន',
          style: TextStyle(
            fontFamily: 'NotoSansKhmer',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CcLesson1()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF7A00)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    // You can adjust other properties like border color, etc.
                    side: const BorderSide(color: Colors.transparent), // Optional border color
                  ),
                ),
                elevation: MaterialStateProperty.all<double>(3.0), // Add elevation/shadow
                minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 70)),
              ),
              child: const Text(
                'មេរៀនទី ១',
                style: TextStyle(
                  fontFamily: 'NotoSansKhmer',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CcLesson2()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF7A00)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                elevation: MaterialStateProperty.all<double>(3.0),
                minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 70)),
              ),
              child: const Text(
                'មេរៀនទី ២',
                style: TextStyle(
                  fontFamily: 'NotoSansKhmer',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CcLesson3()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF7A00)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                elevation: MaterialStateProperty.all<double>(3.0),
                minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 70)),
              ),
              child: const Text(
                'មេរៀនទី ៣',
                style: TextStyle(
                  fontFamily: 'NotoSansKhmer',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
