import 'package:flutter/material.dart';
import 'package:simple/pages/ThanksPage.dart';
import 'package:simple/widgets/custom_image.dart';
import 'package:simple/widgets/custom_end.dart';


class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  List<String?> selectedAnswers = List.filled(5, null);

  final List<String> questions = [
    "Você sentiu que o instrutor criou um ambiente confortável para suas aulas práticas de direção?",
    "Como você classificaria a paciência do instrutor ao lidar com suas dúvidas e dificuldades durante as aulas?",
    "Você percebeu alguma melhoria em suas habilidades de direção devido ao estilo de ensino do instrutor?",
    "O instrutor demonstrou conhecimento técnico sólido durante as práticas de direção?",
    "A forma como o instrutor forneceu feedback contribuiu para o seu aprendizado nas aulas práticas?",
  ];

  final List<String> options = [
    "Totalmente Satisfeito",
    "Satisfeito",
    "Insatisfeito",
    "Totalmente Insatisfeito"
  ];

  void selectAnswer(String answer) {
    setState(() {
      selectedAnswers[currentIndex] = answer;
    });
  }

  void nextPage() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
      });
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
  
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ThanksPage()),
      );
    }
  }

  Widget buildQuestionPage(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomImage(),
            const SizedBox(height: 40),
            Text(
              "Pergunta ${index + 1} de ${questions.length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff024EA2),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              questions[index],
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...options.map((option) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedAnswers[index] == option
                            ? const Color(0xff024EA2)
                            : Colors.blue.shade100,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () => selectAnswer(option),
                      child: Text(option),
                    ),
                  ),
                )),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedAnswers[index] != null ? nextPage : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff024EA2),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  index == questions.length - 1
                      ? "Finalizar"
                      : "Próxima Pergunta",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const CustomEnd(), 
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return buildQuestionPage(index);
          },
        ),
      ),
    );
  }
}
