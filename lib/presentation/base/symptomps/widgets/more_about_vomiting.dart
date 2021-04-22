import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zealth_assignment/application/symptomps/symptomps_bloc.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';

class MoreAboutVomiting extends StatelessWidget {
  const MoreAboutVomiting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "More about Vomiting",
              style: TextStyles.headingH3(),
            ),
            const SizedBox(
              height: 16,
            ),
            RadioListTile(
              activeColor: Kolors.orangeColor,
              title: Row(
                children: [
                  SvgPicture.asset('assets/icons/happy.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(child: Text("Vomited once during the day")),
                ],
              ),
              groupValue: 1,
              value: state.symptomLevelList[state.currentIndex],
              onChanged: (val) {
                context.bloc<SymptompsBloc>().add(
                      const SymptompsEvent.changeSymptomLevel(1),
                    );
              },
            ),
            RadioListTile(
              activeColor: Kolors.orangeColor,
              title: Row(
                children: [
                  SvgPicture.asset('assets/icons/avg.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(child: Text("Vomited 2-5 times during the day")),
                ],
              ),
              groupValue: 2,
              value: state.symptomLevelList[state.currentIndex],
              onChanged: (val) {
                context.bloc<SymptompsBloc>().add(
                      const SymptompsEvent.changeSymptomLevel(2),
                    );
              },
            ),
            RadioListTile(
              activeColor: Kolors.orangeColor,
              title: Row(
                children: [
                  SvgPicture.asset('assets/icons/sad.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      "Vomited 6 or more times during the day",
                    ),
                  ),
                ],
              ),
              groupValue: 3,
              value: state.symptomLevelList[state.currentIndex],
              onChanged: (val) {
                context.bloc<SymptompsBloc>().add(
                      const SymptompsEvent.changeSymptomLevel(3),
                    );
              },
            ),
          ],
        ),
      );
    });
  }
}
