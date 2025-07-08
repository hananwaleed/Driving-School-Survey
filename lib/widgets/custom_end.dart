import 'package:flutter/material.dart';

class CustomEnd extends StatelessWidget {
  const CustomEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        "Pode preencher tranquilamente! Seus dados são confidenciais e acessíveis apenas ao Diretor de Ensino",
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}
