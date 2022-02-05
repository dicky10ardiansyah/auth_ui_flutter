import 'package:auth_ui/components/text_field_container.dart';
import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';

class RoundeInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundeInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(icon, color: kPrimaryColor),
        ),
      ),
    );
  }
}
