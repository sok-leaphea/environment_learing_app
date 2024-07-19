import 'package:flutter/material.dart';

import 're_lesson_2.dart';

class ReLesson1 extends StatefulWidget {
  const ReLesson1({super.key});

  @override
  State<ReLesson1> createState() => _ReLesson1State();
}

class _ReLesson1State extends State<ReLesson1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow color here
        ),
        backgroundColor: const Color(0xFF13E266),
        title: const Text(
          'មេរៀនទី​ ១៖ បរិស្ថាន',
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
                  'តើបរិស្ថានជាអ្វី?',
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
                  'បរិស្ថានគឺជាអ្វីគ្រប់យ៉ាងដែលនៅជុំវិញយើង - ខ្យល់ដែលយើងដកដង្ហើម ទឹកដែលយើងផឹក ដីដែលយើងរស់នៅ និងរុក្ខជាតិ និងសត្វដែលយើងឃើញ។ វាមានសារៈសំខាន់ព្រោះវាផ្តល់ឱ្យយើងនូវធនធានដែលយើងត្រូវការដើម្បីរស់នៅ ដូចជាខ្យល់អាកាសបរិសុទ្ធ ទឹក និងអាហារ។ ការថែរក្សាបរិស្ថាន ជួយឱ្យវាមានសុខភាពល្អ និងសុវត្ថិភាពសម្រាប់មនុស្សគ្រប់គ្នា។',
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
                  MaterialPageRoute(builder: (context) => const ReLesson2()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF13E266)),
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
