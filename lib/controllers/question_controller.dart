import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
// Animated the progressBar

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;
  @override
  void onInit() {
    // Our animation duration is 60 sec
    _animationController =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0.00, end: 1.00).animate(_animationController)
      ..addListener(() {
        update();
      });

    // start our animation
    _animationController.forward();

    super.onInit();
  }
}
