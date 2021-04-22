import 'package:flutter/material.dart';
import 'package:zealth_assignment/application/symptomps/symptomps_bloc.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';
import 'package:zealth_assignment/presentation/base/symptomps/widgets/column_icon_text.dart';
import 'package:zealth_assignment/presentation/base/symptomps/widgets/search.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SymptompsPage extends StatelessWidget {
  const SymptompsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Search & Add Your Symptoms",
            style: TextStyles.headingH4(),
          ),
          const SearchWidget(),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Suggested symptoms",
            style: TextStyle(
              color: Kolors.primaryBodyColor,
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColumnIconText(
                onTap: () {
                  context.bloc<SymptompsBloc>().add(
                        const SymptompsEvent.addSymptom(
                          SymptomType.fatigue,
                        ),
                      );
                },
                asset: 'fatigue.svg',
                text: "Fatigue",
              ),
              ColumnIconText(
                onTap: () {
                  context.bloc<SymptompsBloc>().add(
                        const SymptompsEvent.addSymptom(
                          SymptomType.vomiting,
                        ),
                      );
                },
                asset: 'vomiting.png',
                text: "Vomiting",
                isPng: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
