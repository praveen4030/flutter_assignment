import 'package:flutter/material.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class ButtonWidget extends StatelessWidget {
  final Function onTap;
  final String text;
  const ButtonWidget({
    Key key,
    @required this.onTap,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Kolors.greenColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
