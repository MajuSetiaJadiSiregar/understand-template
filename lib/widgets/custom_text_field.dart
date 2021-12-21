part of 'widget.dart';

class CustomTextField extends TextField {
  static const CustomTextField _instance = CustomTextField._internal();
  const CustomTextField._internal();
  factory CustomTextField() => _instance;


  static textField({controller, decoration})
  {
    return TextField(
      controller: controller,
      decoration: decoration,
    );
  }

}