import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

class Screen_Grid extends StatefulWidget {
   Screen_Grid({Key? key}) : super(key: key);

  @override
  State<Screen_Grid> createState() => _Screen_GridState();
}

int number = 1;
List<AnswerOne> answerOne = [
  AnswerOne("The user1 experience is how the developer feels about a user"),
  AnswerOne("The user2 experience is how the developer feels about a user"),
  AnswerOne("The user3 experience is how the developer feels about a user"),
  AnswerOne("The user4 experience is how the developer feels about a user"),
  AnswerOne("The user5 experience is how the developer feels about a user"),
  AnswerOne("The user6 experience is how the developer feels about a user"),
  AnswerOne("The user7 experience is how the developer feels about a user"),
  AnswerOne("The user8 experience is how the developer feels about a user"),
  AnswerOne("The user9 experience is how the developer feels about a user"),
  AnswerOne("The user10 experience is how the developer feels about a user"),

];

List<AnswerTwo> answerTwo = [
  AnswerTwo("one"),
  AnswerTwo("two"),
  AnswerTwo("three"),
  AnswerTwo("four"),
  AnswerTwo("five"),
  AnswerTwo("six"),
  AnswerTwo("seven"),
  AnswerTwo("eight"),
  AnswerTwo("nine"),
  AnswerTwo("ten"),
];

List<AnswerThree> answerThree = [
  AnswerThree("1"),
  AnswerThree("2"),
  AnswerThree("3"),
  AnswerThree("4"),
  AnswerThree("5"),
  AnswerThree("6"),
  AnswerThree("7"),
  AnswerThree("8"),
  AnswerThree("9"),
  AnswerThree("10"),
];

int index =0;
enum SingingCharacter { questionONe, questionTwo, questionThree }

SingingCharacter? _character = SingingCharacter.questionONe;


class _Screen_GridState extends State<Screen_Grid> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(value: themeManager.themeMode == ThemeMode.dark, onChanged: (value) {
                themeManager.toggleTheme(value);
              },)
            ],
          ),
      body: Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        child: Column(
          children: [
            buildAppBar(),
            SizedBox(
              height: 20,
            ),
            buildQuestionTextShow(),
            SizedBox(
              height: 30,
            ),
            buildQuestionText(),
            SizedBox(
              height: 20,
            ),
            buildRadioButtom(),
            SizedBox(
              height: 50,
            ),
            buildButtom()
          ],
        ),
      ),
    ));
  }

  Widget buildAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Course Exam",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget buildQuestionTextShow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Question",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "${number.toInt()}",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Text(
            "/10",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }

  Widget buildQuestionText() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "What is the user experience?",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget buildRadioButtom() {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.green)),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                      '${answerOne[index].answerTextOne}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ),
                Radio<SingingCharacter>(
                  value: SingingCharacter.questionONe,
                  groupValue: _character,
                  activeColor: Colors.green,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.green)),
          child: Row(
            children: [
               Expanded(
                  child: Text(
                      ' ${answerTwo[index].answerTextTwo}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14))),
              Radio<SingingCharacter>(
                value: SingingCharacter.questionTwo,
                groupValue: _character,
                activeColor: Colors.green,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.green)),
            child: Row(
              children: [
                Expanded(
                  child:  Text(
                      '${answerThree[index].answerTextthree}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ),
                Radio<SingingCharacter>(
                  value: SingingCharacter.questionThree,
                  groupValue: _character,
                  activeColor: Colors.green,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            )),
      ],
    );
  }

  Widget buildButtom() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child:
          SizedBox(
            width: 150,
            child: Visibility(
              child: ElevatedButton(
                onPressed: () {
                  number--;
                  if (number >= 1 && number <= 10) {
                    number - 1;
                    index-- >=0 ;
                    setState(() {});
                  }
                },
                child: Text("back"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
              visible: number>=2,
            ),
          )),
          Expanded(
            child: SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  number++;
                  if (number >= 1 && number <= 10) {
                    number + 1;
index++;
setState(() {});
                  }
                },
                child: Text("Next"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AnswerOne {
String answerTextOne;

AnswerOne(this.answerTextOne);
}

class AnswerTwo {
String answerTextTwo;

AnswerTwo(this.answerTextTwo);
}


class AnswerThree {
String answerTextthree;

AnswerThree(this.answerTextthree);
}



