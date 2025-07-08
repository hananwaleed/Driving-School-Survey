import 'package:flutter/material.dart';
import 'package:simple/widgets/custom_end.dart';
import 'package:simple/widgets/custom_image.dart';
import 'package:simple/widgets/custom_one.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16), 
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CustomImage(),
                  SizedBox(height: 20),
                  Text(
                    "A Importância da sua Opinião nas Aulas Práticas",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  CustomOne(),
                  SizedBox(height: 20),
                 CustomEnd(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
