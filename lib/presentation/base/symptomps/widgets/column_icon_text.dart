import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class ColumnIconText extends StatelessWidget {
  final String asset;
  final String text;
  final bool isPng;
  final Function onTap;
  const ColumnIconText({
    Key key,
    @required this.asset,
    @required this.text,
    @required this.onTap,
    this.isPng = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 1), //(x,y)
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          children: [
            isPng
                ? Image.asset(
                    'assets/icons/$asset',
                    height: 30,
                    width: 30,
                  )
                : SvgPicture.asset(
                    'assets/icons/$asset',
                    height: 30,
                    width: 30,
                  ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyles.headingH4(),
            )
          ],
        ),
      ),
    );
  }
}
