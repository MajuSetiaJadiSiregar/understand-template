part of 'widget.dart';

class CustomTextStyle extends TextStyle {
  static const CustomTextStyle _instance = CustomTextStyle._internal();
  const CustomTextStyle._internal();
  factory CustomTextStyle() => _instance;

  static textStyle({warnaText, ukuranText, ketebalanText})
  {
    return TextStyle(
      color: warnaText,
      fontSize: ukuranText,
      fontWeight: ketebalanText
    );
  }
}