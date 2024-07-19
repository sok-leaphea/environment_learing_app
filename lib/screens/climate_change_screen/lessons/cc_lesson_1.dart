import 'package:flutter/material.dart';

import 'cc_lesson_2.dart';

class CcLesson1 extends StatefulWidget {
  const CcLesson1({super.key});

  @override
  State<CcLesson1> createState() => _CcLesson1State();
}

class _CcLesson1State extends State<CcLesson1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFFFF7A00),
        title: const Text(
          'មេរៀនទី ១៖ បម្រែបម្រួលអាកាសធាតុ',
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
                Image.asset(
                  'assets/images/climate_change.png'
                ),
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
                  MaterialPageRoute(builder: (context) => const CcLesson2()),
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
    );
  }
}
