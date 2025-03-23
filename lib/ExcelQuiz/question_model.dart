class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "____ returns the least common multiple.",
    [
      Answer("LCCM()", false),
      Answer("LCM()", true),
      Answer("TLCM()", false),
      Answer("RTLCM()", false),
    ],
  ));

  list.add(Question(
    "This is not a function category in Excel.",
    [
      Answer("Logical", false),
      Answer("Text", false),
      Answer("Financial", false),
      Answer("Data series", true),
    ],
  ));

  list.add(Question(
    "How many columns are there in old version of MS Excel?",
    [
      Answer("250", false),
      Answer("256", true),
      Answer("265", false),
      Answer("269", false),
    ],
  ));

  list.add(Question(
    "Which bar show the used formula of selected active cell?",
    [
      Answer("Formula bar", true),
      Answer("Ribbon", false),
      Answer("Menu bar", false),
      Answer("Scroll bar", false),
    ],
  ));
  list.add(Question(
    "Typed text showed in active cell and also in ___",
    [
      Answer("Formula bar", true),
      Answer("Ribbon", false),
      Answer("Menu bar", false),
      Answer("Scroll bar", false),
    ],
  ));
  list.add(Question(
    "What is the default row height of MS Excel?",
    [
      Answer("10", false),
      Answer("12", false),
      Answer("13", false),
      Answer("15", true),
    ],
  ));
  list.add(Question(
    "Excel documents are stored as files called",
    [
      Answer("Workgroups", false),
      Answer("Worktables", false),
      Answer("Worksheets", true),
      Answer("Workforce", false),
    ],
  ));
  list.add(Question(
    "What refers to the horizontal cells which can contain information?",
    [
      Answer("Ribbon", false),
      Answer("Rows", true),
      Answer("Columns", false),
      Answer("Horizontal scrollbar", false),
    ],
  ));
  list.add(Question(
    "Today motherboard typically use",
    [
      Answer("70 pin modules", false),
      Answer("72 pin modules", true),
      Answer("74 pin modules", false),
      Answer("76 pin modules", false),
    ],
  ));
  list.add(Question(
    "To minimize the currently selected window, press",
    [
      Answer("Ctrl+ F11", false),
      Answer("Ctrl+ F12", false),
      Answer("Ctrl+ F9", true),
      Answer("Ctrl+ F10", false),
    ],
  ));


  return list;
}
