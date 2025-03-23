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
    "MS word is software of ____",
    [
      Answer("Apple", false),
      Answer("Android", false),
      Answer("Google", false),
      Answer(" Microsoft", true),
    ],
  ));

  list.add(Question(
    "Which is the word processing software?",
    [
      Answer("Avast",false),
      Answer("MS word 2007", true),
      Answer("Google Chrome", false),
      Answer("Mozilla Firefox", false),
    ],
  ));

  list.add(Question(
    "MS Word is ____ software.",
    [
      Answer("Web browser", false),
      Answer("Word processing", true),
      Answer("Operating system", false),
      Answer("Antivirus", false),
    ],
  ));

  list.add(Question(
    "The valid format of MS Word is ___",
    [
      Answer(".exe", false),
      Answer(".doc", true),
      Answer(".png", false),
      Answer(".jpeg", true),
    ],
  ));
  list.add(Question(
    "What program is used in MS-Word to check the spelling?",
    [
      Answer("Research", false),
      Answer("Word Count",  false),
      Answer("Set language", false),
      Answer("Spelling & Grammar", true),
    ],
  ));
  list.add(Question(
    "To show the font dialog box press ____",
    [
      Answer("Ctrl+ P", false),
      Answer("Ctrl+ D", true),
      Answer("Ctrl+ B", false),
      Answer(" Ctrl+ Q", false),
    ],
  ));
  list.add(Question(
    "A word gets selected by clicking it",
    [
      Answer("Once", false),
      Answer("Twice", true),
      Answer("Three times", false),
      Answer("Four times", false),
    ],
  ));
  list.add(Question(
    "A _____ identifies a location or a selection of text that you name and identify for future reference.",
    [
      Answer("Footer", false),
      Answer("Bookmark", true),
      Answer("Header", false),
      Answer("Page number",false),
    ],
  ));
  list.add(Question(
    "Which option is not available in Microsoft office button?",
    [
      Answer("Bold", true),
      Answer("New", false),
      Answer("Save", false),
      Answer("Open", false),
    ],
  ));
  list.add(Question(
    "_____ is the change the way text warps around the selected object.",
    [
      Answer("Text wrapping", true),
      Answer("Indent",false),
      Answer("Clipart", false),
      Answer("Line spacing", false),
    ],
  ));

  return list;
}
