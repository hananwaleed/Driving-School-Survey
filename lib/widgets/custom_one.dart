import 'package:flutter/material.dart';
import 'package:simple/pages/SecondPage.dart';

class CustomOne extends StatelessWidget {
  const CustomOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffE9F3FF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
       
          Text(
            "Seu Feedback Molda o Futuro do Ensino de Direção.\nParticipe Avaliando as Experiências na Auto Escola Alma",
            style: TextStyle(fontSize: 16, color: Color(0xff545454)),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 40),

          
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Secondpage()),
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
                "Iniciar Pesquisa",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFAFA),
                ),
              ),
            ),
          ),

          SizedBox(height: 30),

          Text(
            "Tempo estimado : 4 minutos",
            style: TextStyle(fontSize: 16, color: Color(0xffA6A6A6)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
