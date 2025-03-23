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
    "_____ is a presentation program.",
    [
      Answer("U-torrent", false),
      Answer("Mozilla Firefox", false),
      Answer("MS PowerPoint", true),
      Answer("Slide Panel", false),
    ],
  ));

  list.add(Question(
    "In PowerPoint, the header and footer button can be found on the insert tab in what group?",
    [
      Answer("Tables group", false),
      Answer("Text group", true),
      Answer("Object group", false),
      Answer("Illustrations group", false),
    ],
  ));

  list.add(Question(
    "Which is not the valid edition of MS PowerPoint?",
    [
      Answer("MS PowerPoint 2003", false),
      Answer("MS PowerPoint 2007", false),
      Answer("MS PowerPoint 2010", false),
      Answer("MS PowerPoint 1920", true),
    ],
  ));

  list.add(Question(
    "The slide that is used to introduce a topic and set the tone for the presentation is called the",
    [
      Answer("Title slide", true),
      Answer("Bullet slide", false),
      Answer("Table slide", false),
      Answer("Graph slide", false),
    ],
  ));
  list.add(Question(
    "The PowerPoint view that displays only text (title and bullets) is",
    [
      Answer("Outline view", true),
      Answer("Notes page view", false),
      Answer("Slide sorter", false),
      Answer("Slide show", false),
    ],
  ));
  list.add(Question(
    "Times new Roman, Cambria, Arial are the example of",
    [
      Answer("Font face", true),
      Answer("Clipart", false),
      Answer("SmartArt", false),
      Answer("Themes", false),
    ],
  ));
  list.add(Question(
    "What is the default PowerPoint standard layout?",
    [
      Answer("Blank", false),
      Answer("Title slide", true),
      Answer("Title only", false),
      Answer("Comparison", false),
    ],
  ));
  list.add(Question(
    "To center the selected text, the shortcut key is _____",
    [
      Answer("Ctrl+ C", false),
      Answer("Ctrl+ E", true),
      Answer("Ctrl+ O", false),
      Answer("Ctrl+ U", false),
    ],
  ));
  list.add(Question(
    "Which type of view is not present in MS PowerPoint?",
    [
      Answer("Extreme animation", true),
      Answer("Slide show", false),
      Answer("Slide sorter", false),
      Answer("Normal", false),
    ],
  ));
  list.add(Question(
    "Which feature is not in MS PowerPoint?",
    [
      Answer("Scan a virus", true),
      Answer("Zoom", false),
      Answer("Background color", false),
      Answer("Slide show", false),
    ],
  ));


  return list;
}
