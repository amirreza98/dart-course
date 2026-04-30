//Basic Function Syntax:
returnType functionName(parameters) {
  // logic
  return value;
}
//Or short version:
returnType functionName(parameters) => expression;

// Entry Point of every Dart program:
void main() {
  //invoke:
  greet('Sara');
  //${...} is string interpolation
  print('10 + 25 = ${add(10, 25)}');
  print(getGrade(87));
  print(isAdult(16));

  //Anonymous fun
  var multiply = (int a, int b) => a * b;
  print(multiply(4, 5));

  List<int> scores = [55, 88, 42, 91, 73];

  //Functions Inside Collections
  print(scores.where((s) => s >= 60).toList());
}

//defenition:
void greet(String name) => print('Hello, $name!');

//arrow syntax (=>) → shorthand for one-line functions:
int add(int a, int b) => a + b;

String getGrade(int score) {
  if (score >= 90) return 'A';
  if (score >= 80) return 'B';
  if (score >= 70) return 'C';
  if (score >= 60) return 'D';
  return 'F';
}

//truly or falsy
bool isAdult(int age) => age >= 18;
