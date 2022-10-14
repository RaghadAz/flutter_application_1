import 'package:flutter_application_1/presentation/base/baseviewmodel.dart';

class OnBoardingViewModle extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  @override
  void dispose() {
  }

  @override
  void start() {
  }

  @override
  void goNext() {
  }

  @override
  void goPrevious() {
  }

  @override
  void onPageChanged(int index) {
  }
}

abstract class OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChanged(int index);
}

abstract class OnBoardingViewModelOutputs {}
