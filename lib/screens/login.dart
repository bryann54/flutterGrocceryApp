// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groccery_app/screens/categories.dart';
import 'package:groccery_app/screens/intro.dart';
import 'package:groccery_app/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                width: 150, height: 150, child: Image.asset('images/app.png')),
          ),

          Text(
            'welcome Back...',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
              color: Color(0xFF687A9E),
            ),
          ),
          Text('🧺log in to continue!!',
              style: GoogleFonts.bebasNeue(
                fontSize: 10,
                color: Color(0xFF687A9E),
              ),
              textAlign: TextAlign.center),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          const SizedBox(
            height: 15,
          ),
          //textfields
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email@gmail.com',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'password',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Categories()),
              );
            },
            child: GestureDetector(
              onTap: () {
               Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => IntroPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);
      return SlideTransition(position: offsetAnimation, child: child);
    },
  ),
);

              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Container(
                  padding: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: const [Colors.blueGrey, Colors.green]),
                      borderRadius: BorderRadius.circular(19)),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Not a member?'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    'Register now!',
                    style: GoogleFonts.habibi(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 230, 71, 3),
                            fontSize: 13,
                            decoration: TextDecoration.underline)),
                  ),
                ),
              )
            ],
          ),

          Divider(
            thickness: 1,
            color: Colors.grey[90],
          ),
          Text(
            'or Sign in With',
            style: GoogleFonts.habibi(
              fontSize: 20,
              color: Color(0xFF687A9E),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[90],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 4, // Adjust the elevation value as needed
                shadowColor: Colors.blue, // Change the shadow color
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1), // Border color and width
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(
                        'data:image/png;base64,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'),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Material(
                elevation: 4, // Adjust the elevation value as needed
                shadowColor: Colors.blue, // Change the shadow color
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1), // Border color and width
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(
                        'data:image/jpeg;base64,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'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
