import 'package:flutter/material.dart';

class DortluSecenek extends StatefulWidget {
  @override
  _DortluSecenekState createState() => _DortluSecenekState();
}

class _DortluSecenekState extends State<DortluSecenek> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  cevap = "Bilmiyorum";
                });
              },
              child: Bubble(
                style: styleMe,
                child: const Text("Bilmiyorum"),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  cevap = "Metamorfik";
                });
              },
              child: Bubble(
                style: styleMe,
                child: const Text("Metamorfik"),
              ),
            ),
            SizedBox(width: 8,),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  cevap ="Sedimanter";
                });
              },
              child: Bubble(
                style: styleMe,
                child: const Text("Sedimanter"),
              ),
            ),
            SizedBox(width: 8,),
          ],
        ),

      ],
    ),
  }
}
