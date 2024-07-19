import 'package:environment_learing_app/screens/climate_change_screen/Quiz/cc_quiz_1.dart';
import 'package:environment_learing_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'Lessons/cc_lesson_main_screen.dart';

class ClimateChangeMainScreen extends StatefulWidget {
  const ClimateChangeMainScreen({Key? key}) : super(key: key);

  @override
  State<ClimateChangeMainScreen> createState() =>
      _ClimateChangeMainScreenState();
}

class _ClimateChangeMainScreenState extends State<ClimateChangeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFFFF7A00),
        title: const Text(
          'បម្រែបម្រួលអាកាសធាតុ',
          style: TextStyle(
            fontFamily: 'NotoSansKhmer',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/recycling.png',
            width: 100,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'តើអ្នកដឹងពីបម្រែបម្រួលអាកាសធាតុដែរឬទេ?',
            style: TextStyle(
              fontFamily: 'NotoSansKhmer',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Click');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CcLessonMainScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF7A00)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 60)),
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
                  const SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CcQuiz1()),
                      );
                      print(
                          'Question button clicked'); // Add your button functionality here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFE2135E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 60)),
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
          ),
        ],
      ),
    );
  }
}
