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
    " What is Microsoft Outlook primarily used for?",
    [
      Answer("Word processing", false),
      Answer("Spreadsheet management", false),
      Answer("Email communication and scheduling", true),
      Answer("Web browsing", false),
    ],
  ));

  list.add(Question(
    "What is the default file format for saving Outlook 2019 data?",
    [
      Answer(".docx", false),
      Answer(".pst", true),
      Answer(".xls", false),
      Answer(".pdf", false),
    ],
  ));

  list.add(Question(
    "Which keyboard shortcut is used to send an email in Outlook 2019?",
    [
      Answer("Ctrl + S", false),
      Answer("Ctrl + Enter", true),
      Answer("Alt + S", false),
      Answer("Shift + Enter", false),
    ],
  ));

  list.add(Question(
    "How do you create a new email in Outlook 2019?",
    [
      Answer("Ctrl + N", true),
      Answer("Ctrl + Shift + M", false),
      Answer("Alt + N", false),
      Answer("Shift + Ctrl + N", false),
    ],
  ));
  list.add(Question(
    "In Outlook 2019, which of the following features is used to organize emails into folders automatically?",
    [
      Answer("Quick Steps", false),
      Answer("Rules", true),
      Answer("Tasks", false),
      Answer("Filters", false),
    ],
  ));
  list.add(Question(
    "Which view in Outlook 2019 is used to manage appointments and meetings?",
    [
      Answer("Mail", false),
      Answer("People", false),
      Answer("Calendar", true),
      Answer("Tasks", false),
    ],
  ));
  list.add(Question(
    "What is the purpose of the Out of Office feature in Outlook 2019?",
    [
      Answer("To delete emails when you're away", false),
      Answer("To automatically reply to incoming emails when you're unavailable", true),
      Answer("To mark emails as read when you're out of the office", false),
      Answer("To forward emails to another account", false),
    ],
  ));
  list.add(Question(
    "Which option allows you to attach a file to an email in Outlook 2019?",
    [
      Answer("Insert → Picture", false),
      Answer(" Insert → File", true),
      Answer("File → Open", false),
      Answer(" Attachments → New", false),
    ],
  ));
  list.add(Question(
    "Which of the following is NOT a valid permission level when sharing a calendar in Outlook 2019?",
    [
      Answer("Reviewer", false),
      Answer("Editor", false),
      Answer("Owner", false),
      Answer("Contributor", true),
    ],
  ));
  list.add(Question(
    "How do you flag an email for follow-up in Outlook 2019?",
    [
      Answer("Right-click the email and choose “Flag”", true),
      Answer("Drag the email to the “Follow-Up” folde", false),
      Answer(" Press Ctrl + Shift + F", false),
      Answer("Click “Mark as Important”", false),
    ],
  ));


  return list;
}
