part of 'widget.dart';

class CustomButton {
  static final CustomButton _instance = CustomButton._internal();
  CustomButton._internal();
  factory CustomButton() => _instance;

  static Widget buttonElevatedButton({Widget? titleButton, VoidCallback? eventButton})
  {
    return ElevatedButton(
      onPressed: (eventButton != null) ? eventButton : (){print('no event');},
      child: (titleButton != null) ? titleButton : const Center(child: Text('No Title'),),
    );
  }
}