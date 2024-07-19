import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../climate_change_screen/climate_change_main_screen.dart';
import '../recycling_screen/recycling_main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF13E266),
        leading: Container(
          padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset('assets/images/recycling.png',)
        ),
        leadingWidth: 60,
        toolbarHeight: 70,
        title: const Text(
          'បរិស្ថាន',
          style: TextStyle(
            fontFamily: 'NotoSansKhmer',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'ប្រធានបទ',
                style: TextStyle(
                  fontFamily: 'NotoSansKhmer',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ClimateChangeMainScreen()),
                  );
                  if (kDebugMode) {
                    print('Tap');
                  }
                },
                child: SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF7A00),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                            'បម្រែបម្រួលអាកាសធាតុ',
                          style: TextStyle(
                            fontFamily: 'NotoSansKhmer',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                            'assets/images/smoke.png',
                          width: 100,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RecyclingMainScreen()),
                  );
                  if (kDebugMode) {
                    print('Click');
                  }
                },
                child: SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF33D14C),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/images/recycle.png',
                          width: 100,
                        ),
                        const Text(
                          'ការគ្រប់គ្រងកាកសំណល់',
                          style: TextStyle(
                            fontFamily: 'NotoSansKhmer',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
