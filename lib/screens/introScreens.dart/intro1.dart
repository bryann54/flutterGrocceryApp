import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: Column(
          children: [
            Lottie.network(
                'https://lottie.host/745e2f7c-eedb-4867-9524-9bc9be705fd4/fQJf2HG2T0.json'),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'worried of grocceries...',
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
                      'Lorem ipsum is a placeholder text commonly used  ',
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
