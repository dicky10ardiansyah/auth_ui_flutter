import 'package:auth_ui/Screens/Login/components/background.dart';
import 'package:auth_ui/Screens/Signup/signup_screen.dart';
import 'package:auth_ui/components/already_have_an_account_check.dart';
import 'package:auth_ui/components/rounded_button.dart';
import 'package:auth_ui/components/rounded_input_field.dart';
import 'package:auth_ui/components/rounded_password_field.dart';
import 'package:auth_ui/components/text_field_container.dart';
import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundeInputField(
              hintText: "Your email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
