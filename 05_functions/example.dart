void main() {
  greet('Sara');
  print('10 + 25 = ${add(10, 25)}');
  print(getGrade(87));
  print(isAdult(16));

  var multiply = (int a, int b) => a * b;
  print(multiply(4, 5));

  List<int> scores = [55, 88, 42, 91, 73];
  print(scores.where((s) => s >= 60).toList());
}

void greet(String name) => print('Hello, $name!');

int add(int a, int b) => a + b;

String getGrade(int score) {
  if (score >= 90) return 'A';
  if (score >= 80) return 'B';
  if (score >= 70) return 'C';
  if (score >= 60) return 'D';
  return 'F';
}

bool isAdult(int age) => age >= 18;
