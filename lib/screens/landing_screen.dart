import 'package:chat_app/data/landing_data.dart';
import 'package:chat_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late bool isFinished;

  final landingData = LandingData();

  @override
  void initState() {
    isFinished = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.4,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  landingData.getTitle(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text(
                  landingData.getDescription(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
                SwipeableButtonView(
                  isFinished: isFinished,
                  onFinish: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomeScreen(),
                      ),
                    );
                  },
                  onWaitingProcess: () {
                    setState(() {
                      isFinished = true;
                    });
                  },
                  activeColor: Colors.blue,
                  buttonWidget: Icon(
                    CupertinoIcons.chevron_right_2,
                    color: Colors.grey,
                  ),
                  buttonText: landingData.getButtonText(),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
