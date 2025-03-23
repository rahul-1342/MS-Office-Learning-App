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
    "Microsoft Access is a _____",
    [
      Answer("Network Database Model", false),
      Answer("RDBMS", true),
      Answer("ORDBMS", false),
      Answer("OODBMS", false),
    ],
  ));

  list.add(Question(
    "Which of the following is not a type of Microsoft access database object?",
    [
      Answer("Macros", false),
      Answer("Modules", false),
      Answer("Worksheets", true),
      Answer("Table", false),
    ],
  ));

  list.add(Question(
    "A subset of characters within a data field is known as",
    [
      Answer("Byte", false),
      Answer("File", false),
      Answer("Record", false),
      Answer("Data string", true),
    ],
  ));

  list.add(Question(
    "Press _____ to quit MS Access.",
    [
      Answer("Tab +F4",false),
      Answer("Esc+ W", false),
      Answer("Ctrl +F4",false),
      Answer("Alt+F4", true),
    ],
  ));
  list.add(Question(
    "____ is not a valid data type in MS Access.",
    [
      Answer("Auto number",false),
      Answer("Currency", false),
      Answer("Memo",false),
      Answer("Picture", true),
    ],
  ));
  list.add(Question(
    "A _____ is an area reserved for a specific piece of data.",
    [
      Answer("Report",false),
      Answer("Key", false),
      Answer("Record",false),
      Answer("Field", true),
    ],
  ));
  list.add(Question(
    "What is the maximum length a text field can be?",
    [
      Answer("75",false),
      Answer("120", false),
      Answer("255",true),
      Answer("265", false),
    ],
  ));
  list.add(Question(
    "In Access, ____ are used to store the data.",
    [
      Answer("Report",false),
      Answer("Form", false),
      Answer("Table",true),
      Answer("Query", false),
    ],
  ));
  list.add(Question(
    "Which tool do you use to create a query object?",
    [
      Answer("Table query wizard",false),
      Answer("Simple query wizard", true),
      Answer("Simple filer wizard",false),
      Answer("Database wizard", false),
    ],
  ));
  list.add(Question(
    "Open the Save As dialog box",
    [
      Answer("F1",false),
      Answer("F2", false),
      Answer("F10",false),
      Answer("F12", true),
    ],
  ));


  return list;
}
