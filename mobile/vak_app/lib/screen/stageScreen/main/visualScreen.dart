import 'package:flutter/material.dart';
class VisualScreen extends StatefulWidget {
  @override
  State<VisualScreen> createState() => _VisualScreenState();
}

class _VisualScreenState extends State<VisualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pertanyaan")),
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                image: AssetImage(
                  "assets/images/component/LoFi-Dummy Excercise Image.jpg",),
                  // fit: BoxFit.cover,
                ),
              ),
              clipBehavior: Clip.hardEdge,
            ),
            
              SizedBox(height: 20),
                Text(
                "Berapakah angka yang ada di gambar ini?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildAnswerButton(context, "A. 4", true),
                  _buildAnswerButton(context, "B. 3", false),
                  _buildAnswerButton(context, "C. 5", false),
                  _buildAnswerButton(context, "D. 2", false),
                ],
              ),
            ],
          ),
        ),
      );
    }

  Widget _buildAnswerButton(BuildContext context, String text, bool isCorrect) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4, // Lebar 40% dari layar
      child: ElevatedButton(
        onPressed: () {
          // Tampilkan pesan benar/salah
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(isCorrect ? "Jawaban Benar! 🎉" : "Jawaban Salah, coba lagi! ❌"),
              duration: Duration(seconds: 1),
              backgroundColor: isCorrect ? Colors.green : Colors.red,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
