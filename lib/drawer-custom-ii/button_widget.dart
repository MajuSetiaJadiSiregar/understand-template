import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClick;
  const ButtonWidget({Key? key, required this.icon, required this.text, required this.onClick}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(
      onPressed: onClick,
      child: _childButton(),
    );
  }

  Widget _childButton()
  {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 28,),
        const SizedBox(width: 16,)
      ],
    );
  }
}