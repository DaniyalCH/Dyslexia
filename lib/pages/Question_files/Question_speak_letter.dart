class Question {
  final int id, answer;
  final String question;
  final String word;
  final List<String> options;
  Question({required this.id,required this.question, required this.answer,required this.options, required this.word});
}



const List speak_questions = [
  {
    "id": 1,
    "question":
    "Select the first letter of the word  you heard",
    "word": "can",
    "options": ['A', 'C', 'R', 'T'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
    "Select the first letter of the word  you heard",
    "word": "go",
    "options": ['G', 'C', 'R', 'T'],
    "answer_index":0,
  },
  {
    "id": 3,
    "question":
    "Select the first letter of the word  you heard",
    "word": "flow",
    "options": ['A', 'C', 'R', 'F'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question":
    "Select the first letter of the word  you heard",
    "word": "row",
    "options": ['R', 'C', 'R', 'T'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
    "Select the first letter of the word  you heard",
    "word": "sheesh",
    "options": ['A', 'S', 'R', 'T'],
    "answer_index": 1,
  }
];