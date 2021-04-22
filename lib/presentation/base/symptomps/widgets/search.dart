import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zealth_assignment/application/symptomps/symptomps_bloc.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';
import 'package:zealth_assignment/presentation/route/router.gr.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffA5B2BE),
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(
          children: [
            if (state.symptomsList.isNotEmpty)
              symptomsList(state.symptomsList)
            else
              emptySearch(),
            CheckButton(
              onTap: () {
                ExtendedNavigator.of(context).push(Routes.symptompsDetailsPage,
                    arguments: SymptompsDetailsPageArguments(
                        symptomType: SymptomType.fatigue));
              },
            )
          ],
        ),
      );
    });
  }

  Widget emptySearch() {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/search.svg',
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Search Symptoms",
            style: TextStyles.paragraphP4(),
          ),
        ],
      ),
    );
  }

  Widget symptomsList(List<SymptomType> list) {
    return Expanded(
      child: Row(
        children: list
            .map((e) => SearchTile(
                  symptomType: e,
                ))
            .toList(),
      ),
    );
  }
}

class SearchTile extends StatelessWidget {
  final SymptomType symptomType;
  const SearchTile({
    Key key,
    @required this.symptomType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: symptomType == SymptomType.vomiting
          ? Row(
              children: [
                Image.asset(
                  'assets/icons/vomiting.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 6),
                const Text(
                  "Vomiting",
                  style: TextStyle(
                    fontSize: 12,
                    color: Kolors.primaryBodyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            )
          : Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/fatigue.svg',
                  height: 22,
                  width: 22,
                ),
                const SizedBox(width: 6),
                const Text(
                  "Fatigue",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Kolors.primaryBodyColor,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
    );
  }
}

class CheckButton extends StatelessWidget {
  final Function onTap;
  const CheckButton({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () {
          if (state.symptomsList.isEmpty) {
            Fluttertoast.showToast(msg: "Please add symptoms first");
          } else {
            onTap();
          }
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: state.symptomsList.isEmpty
                ? Kolors.veryLightGrey
                : Kolors.veryLightPink,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            "Check",
            style: TextStyle(
              color: state.symptomsList.isEmpty
                  ? Kolors.lightGreyColor
                  : Kolors.pinkColor,
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
        ),
      );
    });
  }
}
