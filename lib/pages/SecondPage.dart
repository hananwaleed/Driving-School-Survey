import 'package:flutter/material.dart';
import 'package:simple/pages/ThirdPage.dart';
import 'package:simple/widgets/CustomtextField.dart';
import 'package:simple/widgets/custom_end.dart';
import 'package:simple/widgets/custom_image.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

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
                  CustomImage(),
                  SizedBox(height: 20),
                  Text(
                    "Algumas informações Básicas",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffE9F3FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 7),
                        CustomTextfield(label: "Seu Nome "),
                        SizedBox(height: 20),
                        CustomTextfield(label: "Seu Telefone"),
                        SizedBox(height: 20),
                        CustomTextfield(label: "seu Instrutor Atual"),
                        SizedBox(height: 25),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Thirdpage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 260,
                            height: 54,
                            decoration: BoxDecoration(
                              color: Color(0xff056AD9),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Continuar",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFFFAFA),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  CustomEnd(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
