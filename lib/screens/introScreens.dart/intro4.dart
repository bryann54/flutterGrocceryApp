import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: Column(
          children: [
            Lottie.network(
                'https://lottie.host/51a9a720-02af-401a-8c7b-5b5c5bae8038/8xNXjwFWan.json'),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'pay from your comfort zone...',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[900],
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto",
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
