import 'package:flutter/material.dart';

import '../climate_change_main_screen.dart';

class CcQuiz1 extends StatefulWidget {
  const CcQuiz1({Key? key}) : super(key: key);

  @override
  _CcQuiz1State createState() => _CcQuiz1State();
}

class _CcQuiz1State extends State<CcQuiz1> {
  // Quiz data: questions, options, and correct answers
  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'តើឧស្ម័នមួយណាដែលទទួលខុសត្រូវចម្បងចំពោះការឡើងកំដៅផែនដី?',
      'options': ['ឧស្ម័នកាបូនិក', 'អុកស៊ីហ្សែន', 'អាសូត', 'អាហ្គុន'],
      'correctIndex': 0, // Index of correct answer in 'options' list
    },
  ];

  // Define a list of colors for the buttons
  final List<Color> buttonColors = [
    const Color(0xFFFF7A00), // Orange
    const Color(0xFFE2135E), // Pink
    const Color(0xFF4CAF50), // Green
    const Color(0xFF2196F3), // Blue
  ];

  int currentIndex = 0; // Track current question index
  int score = 0; // Track user score

  // Function to handle user's answer selection
  void answerSelected(int selectedIndex) {
    if (selectedIndex == quizData[currentIndex]['correctIndex']) {
      setState(() {
        score++;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ត្រឹមត្រូវ'),
          content: const Text('ស្ម័នមួយណាដែលទទួលខុសត្រូវចម្បងចំពោះការឡើងកំដៅផែនដីគឺ ឧស្ម័នកាបូនិក'),
          actions: <Widget>[
            TextButton(
              child: const Text('យល់ព្រម'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('មិនត្រឹមត្រូវ'),
          content: const Text('សូមព្យាយាមម្ដងទៀត'),
          actions: <Widget>[
            TextButton(
              child: const Text('យល់ព្រម'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }
  Future<bool> _onWillPop() async {
    // Navigate to ClimateChangeMainScreen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const ClimateChangeMainScreen()),
          (Route<dynamic> route) => false,
    );
    return false; // Prevent the default back button action
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
      
          iconTheme: const IconThemeData(
            color: Colors.white, // Set the back arrow color here
          ),
          backgroundColor: const Color(0xFFE2135E),
          title: const Text(
            'បម្រែបម្រួលអាកាសធាតុ',
            style: TextStyle(
              fontFamily: 'NotoSansKhmer',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
      
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display current question
              Text(
                quizData[currentIndex]['question'],
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'NotoSansKhmer',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              // Display options as buttons
              Column(
                children: List.generate(
                  quizData[currentIndex]['options'].length,
                      (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      onPressed: () => answerSelected(index),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(buttonColors[index % buttonColors.length]),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(3.0),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 60)),
                      ),
                      child: Text(
                        quizData[currentIndex]['options'][index],
                        style: const TextStyle(
                          fontFamily: 'NotoSansKhmer',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
