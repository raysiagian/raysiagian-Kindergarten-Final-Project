import 'package:flutter/material.dart';
import 'package:vak_app/screen/stageScreen/main/stageScreen.dart';
import 'package:vak_app/style/localColor.dart';

class SubjectCarouselWidget extends StatelessWidget {
  const SubjectCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 650,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: LocalColor.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Title",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
               SizedBox(height: 10),
               Text(
                "Explanation",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
       Positioned(
        right: 0,
        bottom: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
          ),
          child: Image.asset(
            "assets/images/component/LoFi-Subject Cat Image.png",
            fit: BoxFit.cover,
            width: 193, // Sesuaikan ukuran jika perlu
            height: 304,
          ),
        ),
      ),


        Positioned(
          left: 24,
          bottom: 50,
          child: SizedBox(
            width: 130,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StageScreen()),
                );
              },
              child: Text(
                "Belajar"
              ),
              
            ),
          ),
        ),
      ],
    );
   
  }
}


//  Container(
//       width: MediaQuery.of(context).size.width, // Pastikan gambar penuh
//       height: 650, // Perbesar agar proporsional
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Gambar besar
//           ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Image.asset(
//               "assets/images/component/LoFi-Subject Image.png",
//               height: 450, // Ukuran lebih besar
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),

//           const SizedBox(height: 15),

//           // Button untuk navigasi
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: LocalColor.primary,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => StageScreen()),
//               );
//             },
//             child: Text(
//               "Mata Pelajaran",
//               style: TextStyle(
//                 color: Colors.white, 
//                 fontSize: 16, 
//                 fontWeight: FontWeight.bold
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
