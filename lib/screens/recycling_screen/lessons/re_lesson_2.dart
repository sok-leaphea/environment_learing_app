import 'package:environment_learing_app/screens/climate_change_screen/Lessons/cc_lesson_1.dart';
import 'package:environment_learing_app/screens/recycling_screen/lessons/re_lesson_1.dart';
import 'package:flutter/material.dart';

import 're_lesson_3.dart';

class ReLesson2 extends StatefulWidget {
  const ReLesson2({Key? key}) : super(key: key); // Added the correct syntax for the constructor

  @override
  State<ReLesson2> createState() => _ReLesson2State();
}

class _ReLesson2State extends State<ReLesson2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFF13E266),
        title: const Text(
          'មេរៀនទី​ ២៖ បរិស្ថាន',
          style: TextStyle(
            fontFamily: 'NotoSansKhmer',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'អ្វីទៅជាការបម្រែបម្រួលអាកាសធាតុ?',
                  style: TextStyle(
                    fontFamily: 'NotoSansKhmer',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Image.asset(
                  'assets/images/climate_change.png',
                  width: double.infinity, // Adjust image width to fit container width
                  fit: BoxFit.cover, // Ensure the image covers the entire space
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'ការប្រែប្រួលអាកាសធាតុ គឺជាដំណើរការប្រែប្រួលបន្តិចម្តងៗនៃអាកាសធាតុក្នុងរយៈពេលវែង ក្នុងនោះរួមមាន សីតុណ្ហភាព របបនិង ស្ថានភាពទឹកភ្លៀង របបខ្យល់ ឫគម្របទឹកកកជាដើម។ ការប្រែប្រួលនេះ កើតឡើងដោយសារ កត្តាធម្មជាតិ និងសកម្មភាពមនុស្សផងដែរ​៕',
                  style: TextStyle(
                    fontFamily: 'NotoSansKhmer',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 40.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the same screen (CcLesson2) when button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ReLesson1()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFE2135E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(3.0),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
                    ),
                    child: const Text(
                      'ថយក្រោយ',
                      style: TextStyle(
                        fontFamily: 'NotoSansKhmer',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Optional spacing between buttons
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the same screen (CcLesson2) when button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ReLesson3()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF13E266)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(3.0),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
                    ),
                    child: const Text(
                      'បន្ទាប់',
                      style: TextStyle(
                        fontFamily: 'NotoSansKhmer',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
