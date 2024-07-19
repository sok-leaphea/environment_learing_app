import 'package:environment_learing_app/screens/recycling_screen/Quiz/re_quiz_1.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import 'lessons/r_lesson_main_screen.dart';

class RecyclingMainScreen extends StatefulWidget {
  const RecyclingMainScreen({super.key});

  @override
  State<RecyclingMainScreen> createState() => _RecyclingMainScreenState();
}

class _RecyclingMainScreenState extends State<RecyclingMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFF33D14C),
        title: const Text(
          'ការគ្រប់គ្រងកាកសំណល់',
          style: TextStyle(
            fontFamily: 'NotoSansKhmer',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/recycling.png',
              width: 100,
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'តើអ្នកដឹងពីការគ្រប់គ្រងកាកសំណល់ដែរឬទេ??',
              style: TextStyle(
                fontFamily: 'NotoSansKhmer',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0,),
            Container(
              padding: const EdgeInsets.only(left: 90.0, right: 90.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RLessonMainScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF33D14C)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          // You can adjust other properties like border color, etc.
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 60)),
                    ),
                    child: const Text(
                      'មេរៀន',
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
                        MaterialPageRoute(builder: (context) => const ReQuiz1()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFE2135E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          // You can adjust other properties like border color, etc.
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 60)),
                    ),
                    child: const Text(
                      'សំណួរ',
                      style: TextStyle(
                        fontFamily: 'NotoSansKhmer',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
