import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String? buttonText;
  // final Function()? onTapFunc;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;

  const WelcomeButton({super.key, this.buttonText, this.onTap, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => onTap! ));
      },
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50)
          )
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: textColor!
          ),
        ),
      ),
    );
  }
}