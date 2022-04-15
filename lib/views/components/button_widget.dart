import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String texto;
  final Function() onPress;

  const ButtonWidget({Key? key, required this.texto, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffFFA19E),
          shadowColor: const Color(0xff656565),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPress,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ));
  }
}
