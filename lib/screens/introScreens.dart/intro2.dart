import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: Column(
          children: [
         
            Lottie.network(
                'https://lottie.host/55b35c4e-85d0-4084-80d9-d2f83c81be68/uF0j2Ukxbl.json'),
         
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'a faster way...',
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
