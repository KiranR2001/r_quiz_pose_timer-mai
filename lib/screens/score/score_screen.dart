import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer/constants.dart';
import 'package:timer/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timer/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Aligns the column contents in the center
            children: [
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: kSecondaryColor),
              ),
              SizedBox(height: 16), // Adds some spacing between the elements
              Text(
                "${qnController.numOfCorrectAns}/${qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: kSecondaryColor),
              ),
              SizedBox(height: 32), // Adds some spacing between the elements
              ElevatedButton(
                onPressed: () {
                  // Navigation logic goes here
                  // You can use Get.to() or Get.off() to navigate to the desired page
                  Get.to(WelcomeScreen());
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: const BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Restart",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
