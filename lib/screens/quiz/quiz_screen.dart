import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer/controllers/question_controller.dart';
import 'package:timer/vision_detector_views/detector_views.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: const Body(),
    );
  }
}

// Added by Rony
class front_camera extends StatelessWidget {
  const front_camera({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const QuizScreen(),
            Container(
              alignment: Alignment.bottomCenter,
              child: const FractionallySizedBox(
                alignment: Alignment.topCenter,
                heightFactor: 0.2,
                child: PoseDetectorView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
