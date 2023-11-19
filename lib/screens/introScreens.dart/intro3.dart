import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Lottie.network(
                'https://lottie.host/e5a32312-2f69-458a-9c50-d5c6b70d4c5f/V11oyJGmcs.json'),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'delivered to door...',
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
