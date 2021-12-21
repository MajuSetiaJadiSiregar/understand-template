part of 'widget.dart';

class CustomInputDecoration extends InputDecoration {
  static const CustomInputDecoration _instance = CustomInputDecoration._internal();
  const CustomInputDecoration._internal();
  factory CustomInputDecoration() => _instance;


  static inputDecoration({border, placeHolder, placeHolderStyle})
  {
    return InputDecoration(
      border: border,
      hintText: placeHolder,
      hintStyle: placeHolderStyle
    );
  }

}