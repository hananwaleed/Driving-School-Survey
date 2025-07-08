import 'package:flutter/material.dart';
import 'package:simple/widgets/custom_end.dart'; 

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Agradecemos!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff024EA2),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18),
                const Text(
                  "Sua avaliação molda melhorias para proporcionar:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 45, vertical: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xffEAF3FC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: const [
                      Text("Compreensão Aprofundada.",
                          style: TextStyle(fontSize: 15,color: Color(0xff104581)),
                          textAlign: TextAlign.center),
                      SizedBox(height: 40),
                      Text("Experiência De Aprendizado Positiva.",
                          style: TextStyle(fontSize: 15,color: Color(0xff104581)),
                          textAlign: TextAlign.center),
                      SizedBox(height: 40),
                      Text("Suporte Personalizado.",
                          style: TextStyle(fontSize: 15,color: Color(0xff104581)),
                          textAlign: TextAlign.center),
                      SizedBox(height: 40),
                      Text("Métodos De Ensino Mais Eficientes.",
                          style: TextStyle(fontSize: 15,color: Color(0xff104581)),
                          textAlign: TextAlign.center),
                      SizedBox(height: 40),
                      Text("Garantia De Horários Confiáveis.",
                          style: TextStyle(fontSize: 15,color: Color(0xff104581)),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const CustomEnd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
