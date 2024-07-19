import 'package:environment_learing_app/screens/home_screen/home_screen.dart';
import 'package:environment_learing_app/screens/recycling_screen/lessons/re_lesson_1.dart';
import 'package:environment_learing_app/screens/recycling_screen/lessons/re_lesson_2.dart';
import 'package:environment_learing_app/screens/recycling_screen/lessons/re_lesson_3.dart';
import 'package:flutter/material.dart';

class RLessonMainScreen extends StatefulWidget {
  const RLessonMainScreen({super.key});

  @override
  State<RLessonMainScreen> createState() => _RLessonMainScreenState();
}

class _RLessonMainScreenState extends State<RLessonMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFF33D14C),
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
                  MaterialPageRoute(builder: (context) => const ReLesson1()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF33D14C)),
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
                  MaterialPageRoute(builder: (context) => const ReLesson2()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF33D14C)),
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
                  MaterialPageRoute(builder: (context) => const ReLesson3()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF33D14C)),
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
