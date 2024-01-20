import 'package:flutter/material.dart';
import 'package:question_and_answer/model.dart';
import 'package:question_and_answer/results.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  int score = 0;
  PageController? _controllerPage = PageController(initialPage: 0);

  Color isWrong = Colors.red;
  Color isRight = Colors.green;
  Color btnColor = Colors.white;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37474F),
      body: SafeArea(
        child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _controllerPage!,
            onPageChanged: (value) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29.0, bottom: 25),
                    child: Text(
                      'Questions ${index + 1}/${questions.length}',
                      style: TextStyle(fontSize: 29, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                      endIndent: 19,
                      indent: 19,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 45.0, top: 22, bottom: 22, right: 45),
                    child: Text(
                      questions[index].question!,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  for (int i = 0; i < questions[index].answer!.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 8, bottom: 8),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isPressed = true;
                          });
                          if (questions[index]
                              .answer!
                              .entries
                              .toList()[i]
                              .value) {
                            score += 1;
                          } else {
                            setState(() {
                              btnColor = Colors.white;
                            });
                          }
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              questions[index].answer!.keys.toList()[i],
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        color: isPressed
                            ? questions[index].answer!.entries.toList()[i].value
                                ? isRight
                                : isWrong
                            : btnColor,
                        shape: StadiumBorder(),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          onPressed: isPressed
                              ? index + 1 == questions.length
                                  ? () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => ResultScreen(
                                            score: score,
                                          ),
                                        ),
                                      );
                                    }
                                  : () {
                                      _controllerPage!.nextPage(
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.decelerate);
                                      print('next question clicked');
                                    }
                              : null,
                          child: Text(
                            index + 1 == questions.length
                                ? 'See Results'
                                : 'Next Question',
                            style: TextStyle(
                              fontSize: 15,
                              color: btnColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
