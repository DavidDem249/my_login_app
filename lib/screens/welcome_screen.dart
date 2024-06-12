import 'package:auth_app/screens/signin_screen.dart';
import 'package:auth_app/theme/theme.dart';
import 'package:auth_app/widgets/custom_scaffold.dart';
import 'package:auth_app/widgets/welcome_button.dart';
import 'package:flutter/material.dart';

import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Back!\n",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                        )
                      ),
                      TextSpan(
                        text: "\nEnter personal details to your employee account",
                        style: TextStyle(
                          fontSize: 18
                        )
                      )
                    ]
                  )
                  ),
              ),
            )
          ),

          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      color: Colors.transparent,
                      buttonText: "Sign in",
                      onTap: SigninScreen(),
                      textColor: Colors.white,
                    )
                  ),
                  Expanded(
                    child: WelcomeButton(
                      color: Colors.white,
                      buttonText: "Sign up",
                      onTap: const SignupScreen(),
                      textColor: lightColorScheme.primary,
                    )
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}