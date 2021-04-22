import 'package:flutter/material.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 19,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 3), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Any Medication / Comments",
            style: TextStyle(
              color: Kolors.primarytitleColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(
              12,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE9EDF0)),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Text(
              "Comment",
              style: TextStyle(
                color: Color(0xffA5B2BE),
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
