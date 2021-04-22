import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zealth_assignment/application/symptomps/symptomps_bloc.dart';
import 'package:zealth_assignment/domain/enums/symptoms.dart';
import 'package:zealth_assignment/presentation/base/symptomps/widgets/more_about_fatigue.dart';
import 'package:zealth_assignment/presentation/base/symptomps/widgets/more_about_vomiting.dart';
import 'package:zealth_assignment/presentation/core/styles/text_style.dart';
import 'package:zealth_assignment/presentation/core/widgets/button.dart';
import 'package:zealth_assignment/presentation/core/widgets/previous_button.dart';
import 'package:zealth_assignment/presentation/base/symptomps/widgets/comment_box.dart';

class SymptompsDetailsPage extends StatelessWidget {
  final SymptomType symptomType;
  const SymptompsDetailsPage({
    Key key,
    @required this.symptomType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            ),
          ),
          title: const Text("Symptoms"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTopWidget(
                state.symptomsList,
                state.currentIndex,
              ),
              const SizedBox(
                height: 20,
              ),
              const CommentBox(),
            ],
          ),
        ),
        bottomNavigationBar: const SymptomsDetailBottom(),
      );
    });
  }

  Widget getTopWidget(List<SymptomType> list, int index) {
    if (list[index] == SymptomType.fatigue) {
      return const MoreAboutFatigue();
    } else {
      return const MoreAboutVomiting();
    }
  }
}

class SymptomsDetailBottom extends StatelessWidget {
  const SymptomsDetailBottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
      return Container(
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15,
        ),
        child: state.currentIndex == 0
            ? Row(
                children: [
                  const SymptomBottomGreenButton(),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: PreviousButton(
                      onTap: () {
                        context.bloc<SymptompsBloc>().add(
                              SymptompsEvent.changeCurrentIndex(
                                state.currentIndex - 1,
                              ),
                            );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const SymptomBottomGreenButton(),
                ],
              ),
      );
    });
  }
}

class SymptomBottomGreenButton extends StatelessWidget {
  const SymptomBottomGreenButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymptompsBloc, SymptompsState>(
        builder: (context, state) {
      return state.currentIndex == state.symptomsList.length - 1
          ? Expanded(
              flex: 1,
              child: ButtonWidget(
                onTap: () {
                  context
                      .bloc<SymptompsBloc>()
                      .add(const SymptompsEvent.updateSymptoms());
                },
                text: "Update",
              ),
            )
          : Expanded(
              flex: 1,
              child: ButtonWidget(
                  onTap: () {
                    context.bloc<SymptompsBloc>().add(
                          SymptompsEvent.changeCurrentIndex(
                            state.currentIndex + 1,
                          ),
                        );
                  },
                  text: "Next"),
            );
    });
  }
}
