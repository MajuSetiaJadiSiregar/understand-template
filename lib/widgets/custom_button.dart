part of 'widget.dart';

class CustomButton {
  static final CustomButton _instance = CustomButton._internal();
  CustomButton._internal();
  factory CustomButton() => _instance;

  Widget buttonElevatedButton({Widget? titleButton, Function? eventButton})
  {
    return ElevatedButton(
      onPressed: (eventButton != null) ? eventButton() : (){print('No Event');},
      child: (titleButton != null) ? titleButton : const Center(child: Text('No Title'),),
    );
  }
}