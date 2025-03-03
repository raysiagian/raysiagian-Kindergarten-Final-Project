import 'package:flutter/material.dart';
import 'package:vak_app/screen/homeScreen/widget/miniProfileWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vak_app/screen/homeScreen/widget/subjectCarouselWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/homebackground.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        // body       
       Column(
            children: [
              // profil pengguna
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: MiniProfileWidget(),
              ),
              SizedBox(height: 20),
              // Carousel
              CarouselSlider(
                options: CarouselOptions(
                  height: 600,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                ),
                  items: List.generate(5, (index) => SubjectCarouselWidget()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}