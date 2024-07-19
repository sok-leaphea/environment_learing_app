import 'package:flutter/material.dart';

import '../../climate_change_screen/widgets/video_player_widget.dart';
import '../Quiz/re_quiz_1.dart';
import 're_lesson_2.dart';

class ReLesson3 extends StatefulWidget {
  const ReLesson3({super.key});

  @override
  State<ReLesson3> createState() => _ReLesson3State();
}

class _ReLesson3State extends State<ReLesson3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFF13E266),
        title: const Text(
          'មមេរៀនទី​ ៣៖ បរិស្ថាន',
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
                const SizedBox(height: 20.0,),
                VideoPlayerWidget(),
                const SizedBox(height: 20.0,),
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
            child: ElevatedButton(
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
                    side: const BorderSide(color: Colors.transparent), // Optional border color
                  ),
                ),
                elevation: MaterialStateProperty.all<double>(3.0), // Add elevation/shadow
                minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
              ),
              child: const Text(
                'សំណួរ',
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
    );
  }
}
