import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Text(
                    "Avalie e Transforme",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),
        Container(
          width: 142,
          height: 62,
          child: Image.asset("assets/Frame.jpg"),
        ),
      ],
    );
  }
}
