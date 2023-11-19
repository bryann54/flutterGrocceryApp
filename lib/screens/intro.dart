import 'package:flutter/material.dart';
import 'package:groccery_app/screens/categories.dart';
import 'package:groccery_app/screens/introScreens.dart/intro1.dart';
import 'package:groccery_app/screens/introScreens.dart/intro2.dart';
import 'package:groccery_app/screens/introScreens.dart/intro4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'introScreens.dart/intro3.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();

  //keep track of page we're on
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4()
            ],
          ),
          Container(
            alignment: const Alignment(0, .75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //skip button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(4);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.cyan,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                //dot indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                ),
                //next or done button
                onLastPage
                    //if last page is true change button to done
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Categories();
                          }));
                        },
                        child: Text(
                          'done',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[900],
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    //if not on last page button to be next
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.decelerate);
                        },
                        child: Text(
                          'next',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.greenAccent[700],
                              fontWeight: FontWeight.w500),
                        ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
