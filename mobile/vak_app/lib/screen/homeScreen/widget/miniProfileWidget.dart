import 'package:flutter/material.dart';
import 'package:vak_app/style/localColor.dart';

class MiniProfileWidget extends StatelessWidget {
  const MiniProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            // avatar
            CircleAvatar(
              radius: 25,
              backgroundColor: LocalColor.transparent,
              child: ClipOval(
                child: Image.asset("assets/images/component/maleicon.png"),
              ),
            ),
            SizedBox(width: 20,),
            Text(
              "Name"
            ),
          ],
        ),
      ),
    );
  }
}