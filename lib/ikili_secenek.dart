import 'package:flutter/material.dart';

class DortluSecenek extends StatefulWidget {
  @override
  _DortluSecenekState createState() => _DortluSecenekState();
}

class _DortluSecenekState extends State<DortluSecenek> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              cevap = "Hamur";
            });
          },
          child: Bubble(
            style: styleMe,
            child: const Text("Hamur"),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              cevap = "Çamur";
            });
          },
          child: Bubble(
            style: styleMe,
            child: const Text("Çamur"),
          ),
        ),
        SizedBox(width: 8,),
      ],
    ),
  }
}
