import 'package:flutter/material.dart';
import 'package:vak_app/screen/homeScreen/widget/miniProfileWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vak_app/screen/homeScreen/widget/subjectCardWidget.dart';
import 'package:vak_app/screen/homeScreen/widget/subjectCarouselWidget.dart';
import 'package:vak_app/screen/stageScreen/main/stageScreen.dart';
import 'package:vak_app/style/localColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MiniProfileWidget(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background/HiFi-Home Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
             children: [
              Container(
                width: double.infinity, // Pastikan ini juga mengikuti lebar penuh
                height: MediaQuery.of(context).size.height, // Tinggi penuh
                color: LocalColor.transparent, // Latar belakang transparan
              ),
              Positioned(
                top: 290,
                left: 80,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan aksi ketika container diklik
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StageScreen()),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/component/HiFi-Komunikasi Subject Icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 340,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan aksi ketika container diklik
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StageScreen()),
                    );
                  },
                  child: Container(
                  width: 70,
                  height: 70,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage("assets/images/component/HiFi-Bahasa Indonesia Subject Icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                )
              ),
              Positioned(
                bottom: 160,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan aksi ketika container diklik
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StageScreen()),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage("assets/images/component/HiFi-Bahasa Inggris Subject Icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 80,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan aksi ketika container diklik
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StageScreen()),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage("assets/images/component/HiFi-Matematika Subject Icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 120,
                right: 50,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan aksi ketika container diklik
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StageScreen()),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage("assets/images/component/HiFi-Sains Subject Icon.png"),
                        fit: BoxFit.cover,
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
