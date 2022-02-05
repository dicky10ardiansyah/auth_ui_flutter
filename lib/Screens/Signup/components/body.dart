import 'package:auth_ui/Screens/Login/login_screen.dart';
import 'package:auth_ui/Screens/Signup/components/background.dart';
import 'package:auth_ui/Screens/Signup/components/or_divider.dart';
import 'package:auth_ui/Screens/Signup/components/social_icon.dart';
import 'package:auth_ui/components/already_have_an_account_check.dart';
import 'package:auth_ui/components/rounded_button.dart';
import 'package:auth_ui/components/rounded_input_field.dart';
import 'package:auth_ui/components/rounded_password_field.dart';
import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.45,
            ),
            RoundeInputField(
              hintText: "Your email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
